String capitalizeName(String? name) =>
    // name != null ? name.toUpperCase() : 'ANON';
    name?.toUpperCase() ?? 'ANON';

void main() {
  capitalizeName('nico');
}
