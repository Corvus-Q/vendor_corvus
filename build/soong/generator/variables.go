package generator

import (
	"fmt"

	"android/soong/android"
)

func corvusExpandVariables(ctx android.ModuleContext, in string) string {
	corvusVars := ctx.Config().VendorConfig("corvusVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if corvusVars.IsSet(name) {
			return corvusVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
