run:
	@flutter run

fix:
	@flutter format .
	@dart fix --apply

test:
	@flutter test

analyze:
	@flutter analyze

all_checks: analyze fix test 