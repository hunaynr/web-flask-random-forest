import math
import os
import joblib
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn import metrics
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import confusion_matrix
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix, ConfusionMatrixDisplay

from app.core.utils.duval_triangle import calculate_cx_cy


def preprocess_training_data(filepath, testing_size):
    df = pd.read_csv(filepath)

    max_ch4 = df['%CH4'].max()
    min_ch4 = df['%CH4'].min()

    df['Cx'] = [calculate_cx_cy(float(row['%CH4']), float(row['%C2H4']), float(row['%C2H2']), min_ch4, max_ch4)['cx'] for _, row in df.iterrows()]
    df['Cy'] = [calculate_cx_cy(float(row['%CH4']), float(row['%C2H4']), float(row['%C2H2']), min_ch4, max_ch4)['cy'] for _, row in df.iterrows()]

    X = df[['Cx', 'Cy']].values
    y = df['Fault'].values

    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=testing_size * 0.01)

    return X_train, X_test, y_train, y_test


def train_random_forest(filepath, testing_size, n_estimator, training_id):
    X_train, X_test, y_train, y_test = preprocess_training_data(
        filepath, testing_size)

    model = RandomForestClassifier(n_estimators=n_estimator, criterion="entropy")

    model.fit(X_train, y_train)

    joblib.dump(model, os.path.join(
        'app/static/pretrained_model/triangle', f'model_{training_id}.joblib'))

    y_pred = model.predict(X_test)
    accuracy = metrics.accuracy_score(y_test, y_pred)
    cm = confusion_matrix(y_test, y_pred)

    cm = confusion_matrix(y_test,y_pred, labels=model.classes_)

    disp = ConfusionMatrixDisplay(confusion_matrix=cm, display_labels=model.classes_)
    disp.plot()

    plt.title('Confusion Matrix')
    plt.savefig(os.path.join(
        'app/static/pretrained_model/triangle', f'cm_{training_id}.jpg'))

    return accuracy, cm


def classify(model_path, cx, cy):
    model = joblib.load(model_path)
    return model.predict([[cx, cy]])