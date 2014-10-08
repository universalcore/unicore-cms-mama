from setuptools import setup, find_packages

requires = [
    'pyramid',
    'unicore-cms>=0.6.1',
]

setup(name='unicore-cms-mama',
      version='0.2',
      description='MAMA Pyramid Frontend Site for Universal Core ',
      long_description='MAMA Pyramid Frontend Site for Universal Core ',
      classifiers=[
      "Programming Language :: Python",
      "Framework :: Pyramid",
      "Topic :: Internet :: WWW/HTTP",
      "Topic :: Internet :: WWW/HTTP :: WSGI :: Application",
      ],
      author='Praekelt Foundation',
      author_email='dev@praekelt.com',
      url='http://github.com/universalcore/unicore-cms-mama',
      license='BSD',
      keywords='web pyramid pylons',
      packages=find_packages(),
      include_package_data=True,
      zip_safe=False,
      install_requires=requires,
      tests_require=requires,
      test_suite="unicorecmsmama",
      entry_points="""\
      [paste.app_factory]
      main = unicorecmsmama:main
      """,
      message_extractors={'.': [
      ('**.py', 'python', None),
      ('**.pt', 'chameleon', None),
      ]},
      )
