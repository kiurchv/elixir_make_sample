#include "elixir_make_sample_nif.h"

static ERL_NIF_TERM hello(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
    return enif_make_atom(env, "world");
}

static ErlNifFunc nif_funcs[] =
{
    {"hello", 0, hello, 0}
};

ERL_NIF_INIT(Elixir.ElixirMakeSample.Nif, nif_funcs, NULL, NULL, NULL, NULL)
