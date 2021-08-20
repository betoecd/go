package math

import "testing"

func TestSoma(t *testing.T) {

	total := Soma(15, 15)

	if total != 30 {
		t.Errorf("Resultado da some é inválido: Resultado %g. Esperado: %d", total, 30)
	}
}
