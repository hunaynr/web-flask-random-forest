import math
import os
import joblib
import sys
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn import metrics
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import confusion_matrix
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix, ConfusionMatrixDisplay


def preprocess_training_data(filepath, testing_size):
    df = pd.read_csv(filepath)

    X = df[['CX', 'CY']].values
    y = df['Fault Type'].values

    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=testing_size * 0.01)

    print("\n Dataset: \n", X_train, "\n", X_test, "\n", file=sys.stderr)
    print("Training size:", X_train.shape[0], "\n", file=sys.stderr)
    print("Testing size:", X_test.shape[0], "\n", file=sys.stderr)
    print("\n Testing Feature (True Feature): \n", X_test, file=sys.stderr)
    print("\n Testing Label (True Label):", file=sys.stderr)
    print(y_test,"\n", file=sys.stderr)

    return X_train, X_test, y_train, y_test


def train_random_forest(filepath, testing_size, n_estimator, training_id):
    X_train, X_test, y_train, y_test = preprocess_training_data(
        filepath, testing_size)

    model = RandomForestClassifier(n_estimators=n_estimator, criterion="entropy")

    model.fit(X_train, y_train)

    joblib.dump(model, os.path.join(
        'app/static/pretrained_model/pentagon', f'model_{training_id}.joblib'))

    y_pred = model.predict(X_test)
    accuracy = metrics.accuracy_score(y_test, y_pred)
    cm = confusion_matrix(y_test, y_pred)

    cm = confusion_matrix(y_test, y_pred, labels=model.classes_)

    print("Result Label (Predicted Label):", file=sys.stderr)
    print(y_pred,"\n", file=sys.stderr)

    disp = ConfusionMatrixDisplay(
        confusion_matrix=cm, display_labels=model.classes_)
    disp.plot()

    plt.title('Confusion Matrix')
    plt.savefig(os.path.join(
        'app/static/pretrained_model/pentagon', f'cm_{training_id}.jpg'))

    return accuracy, cm


def classify(model_path, cx, cy):
    model = joblib.load(model_path)
    return model.predict([[cx, cy]])
