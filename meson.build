project('anjing', ['c', 'vala'],        version: '0.1.0',
  meson_version: '>= 0.40.0',
)

dependencies = [
    dependency('gio-2.0'),
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('json-glib-1.0'),
    meson.get_compiler('vala').find_library('posix')
]

sources = files('src/app.vala', 'src/fileutilities.vala')

subdir('src')

executable('app', [sources], dependencies: dependencies)