import math


def calculate_cx_cy(ch4, c2h4, c2h2, min_ch4, max_ch4):
    total = ch4 + c2h4 + c2h2

    p1 = 100 * ch4 / total
    p2 = 100 * c2h4 / total
    p3 = 100 * c2h2 / total

    L = max_ch4 - min_ch4

    cx = round(0 + L * ((p2 / 100) + (p1 / 100) * 0.5), 1)
    cy = round(0 + (p1 / 100) * L * math.cos(math.radians(30)), 1)

    return {
        'cx': cx,
        'cy': cy,
        'p1': p1,
        'p2': p2,
        'p3': p3
    }


def map_fault_type(code):
  return {
    'PD': 'Partial Discharge',
    'T1': 'Thermal Faults of T<300°C',
    'T2': 'Thermal Faults of 300<T<700°C',
    'T3': 'Thermal Faults of T>700°C',
    'D1': 'Discharge of Low Energy',
    'D2': 'Discharge of High Energy',
    'DT': 'Mixture of Electrical and Thermal Fault'
  }.get(code)
