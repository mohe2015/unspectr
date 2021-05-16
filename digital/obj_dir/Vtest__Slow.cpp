// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtest.h for the primary calling header

#include "Vtest.h"
#include "Vtest__Syms.h"

//==========

Vtest::Vtest(const char* __VCname)
    : VerilatedModule(__VCname)
 {
    Vtest__Syms* __restrict vlSymsp = __VlSymsp = new Vtest__Syms(this, name());
    Vtest* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vtest::__Vconfigure(Vtest__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-9);
    Verilated::timeprecision(-9);
}

Vtest::~Vtest() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = nullptr);
}

void Vtest::_eval_initial(Vtest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest::_eval_initial\n"); );
    Vtest* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vtest::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest::final\n"); );
    // Variables
    Vtest__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vtest* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vtest::_eval_settle(Vtest__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest::_eval_settle\n"); );
    Vtest* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

void Vtest::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtest::_ctor_var_reset\n"); );
    // Body
    a = VL_RAND_RESET_I(1);
    b = VL_RAND_RESET_I(1);
    o = VL_RAND_RESET_I(1);
}
