#!/usr/bin/env python

filename = 'src/yuge.ts'
template = '''
export function fn%d(value?: string) {
    console.log('value is: %%s', value)
}
'''
outf = open(filename, 'w')

for i in range(200000):
    outf.write(template % i)

outf.close()
print('Wrote %s' % filename)
