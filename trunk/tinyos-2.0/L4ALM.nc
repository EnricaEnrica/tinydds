//$Id: L4ALM.nc,v 1.2 2008-07-28 06:32:55 pruet Exp $
// Ported to 2.0

/*Copyright (c) 2008,2009 University of Massachusetts, Boston 
All rights reserved. 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

	Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.
	Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.
    Neither the name of the University of Massachusetts, Boston  nor 
the names of its contributors may be used to endorse or promote products 
derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE UNIVERSITY OF
MASSACHUSETTS, BOSTON OR ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, 
STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
POSSIBILITY OF SUCH DAMAGE.
*/

//This file is generated from IDL. please use it as the skelton file for your module
module L4ALM {
	provides {
		 interface L4;
	}
	uses {
		 interface Boot;
		 //interface EventQueue;
		 //interface QosPolicy;
		 interface L3;
	}
}
implementation {

	event void Boot.booted ()
	{
		dbg("L4", "L4ALM:%s:called\n", __FUNCTION__);
	}

	command ReturnCode_t L4.send (nx_uint16_t dest, Data data)
	{
		dbg("L4", "L4ALM:%s:called\n", __FUNCTION__);
		return call L3.send(dest, data);	
	}

	event ReturnCode_t L3.receive(nx_uint16_t src, Data data)
	{
		dbg("L4", "L4ALM:%s:called\n", __FUNCTION__);
		return signal L4.receive(src, data);
	}

}
