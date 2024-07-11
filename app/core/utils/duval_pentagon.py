def calculate_cx_cy(h2, c2h6, ch4, c2h4, c2h2):
    total = h2 + c2h6 + ch4 + c2h4 + c2h2

    N = 5

    p = [0] * N

    p[0] = 100 * h2 / total
    p[1] = 100 * c2h6 / total
    p[2] = 100 * ch4 / total
    p[3] = 100 * c2h4 / total
    p[4] = 100 * c2h2 / total

    code = ['h2', 'c2h6', 'ch4', 'c2h4', 'c2h2']
    multiplier = [(0, 100), (-95.1, 30.9), (-58.8, -80.9),
                  (58.8, -80.9), (95.1, 30.9)]

    gas = []

    for i in range(5):
        gas.append({
            'code': code[i],
            'x': multiplier[i][0] * p[i] * 0.01,
            'y': multiplier[i][1] * p[i] * 0.01,
            'percentage': p[i]
        })

    A = 0

    for i in range(N - 1):
        A += gas[i]['x'] * gas[i + 1]['y'] - gas[i + 1]['x'] * gas[i]['y']

    A *= 0.5

    cx = cy = 0

    for i in range(N - 1):
        cx += (gas[i]['x'] + gas[i + 1]['x']) * (gas[i]['x'] *
                                                 gas[i + 1]['y'] - gas[i + 1]['x'] * gas[i]['y'])
        cy += (gas[i]['y'] + gas[i + 1]['y']) * (gas[i]['x'] *
                                                 gas[i + 1]['y'] - gas[i + 1]['x'] * gas[i]['y'])

    cx *= (1 / (6 * A))
    cy *= (1 / (6 * A))

    gas_dict = {g['code']: g for g in gas}

    return {
        'cx': cx,
        'cy': cy,
        'gas': gas_dict
    }


def map_fault_type(code):
    return {
        'PD': 'Partial Discharge',
        'D1': 'Discharge of Low Energy',
        'D2': 'Discharge of High Energy',
        'T3-H': 'Thermal Faults of T>700°C in Oil only',
        'C': 'Paper Carbonization >300°C',
        'O': 'Overheating <250°C',
        'S': 'Stray Gassing of Oil <200°C'
    }.get(code)
