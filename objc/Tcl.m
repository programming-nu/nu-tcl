
#import <Foundation/Foundation.h>

#import <tcl.h>


@interface TclInterpreter : NSObject {
  Tcl_Interp *interp;
}
@end

@implementation TclInterpreter

- (TclInterpreter *) init {
	[super init];
	interp = Tcl_CreateInterp();
	return self;
}

- (void) dealloc {
	Tcl_DeleteInterp(interp);
	[super dealloc];
}

- (NSString *) eval:(NSString *) script {
	int resultCode = Tcl_Eval(interp, [script cStringUsingEncoding:NSUTF8StringEncoding]);
	if (resultCode == 0) {
		return [NSString stringWithCString:interp->result encoding:NSUTF8StringEncoding];
	} else {
		return nil;
	}	
}

@end


void TclInit () {
}
