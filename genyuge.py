#!/usr/bin/env python

filename = 'src/yuge.ts'
template = '''
export function fn%d(value?: string) {
    console.log('value is: %%s', value)
}
'''
outf = open(filename, 'w')

NUM_FUNCTIONS = 200000
for i in range(NUM_FUNCTIONS):
    outf.write(template % i)

outf.close()
print('Wrote %s (with %d functions)' % (filename, NUM_FUNCTIONS))
