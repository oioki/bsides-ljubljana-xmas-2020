package c.a.a.b;

import android.content.Context;
import io.the.santasicevault.App;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class a {
    public String a(Context context, String s) {
        c.a.a.d.a rot = ((App) context).a();
        try {
            Class<?> cls = Class.forName('java.lang.StringBuilder');
            int i = 1;
            Class<?> cls2 = Integer.TYPE;
            Constructor<?> con = cls.getConstructor(cls2);
            Object obj = con.newInstance(Integer.valueOf(s.length()));
            Method ap = obj.getClass().getDeclaredMethod('append'), Character.TYPE);
            Method at = Class.forName('java.lang.String').getDeclaredMethod('charAt', cls2);
            Method carr = Class.forName('java.lang.String').getDeclaredMethod('toCharArray'), new Class[0]);
            Method cval = Class.forName('java.lang.Character').getDeclaredMethod('charValue', new Class[0]);
            try {
                char[] cArr = (char[]) carr.invoke(s, new Object[0]);
                int length = cArr.length;
                int i2 = 0;
                while (i2 < length) {
                    Object[] objArr = new Object[i];
                    Object[] objArr2 = new Object[i];
                    objArr2[0] = Integer.valueOf(((Character) cval.invoke(Character.valueOf(cArr[i2]), new Object[0])).charValue() - 32);
                    objArr[0] = at.invoke("]kYV}(!7P$n5_0i R:?jOWtF/=-pe'AD&@r6%ZXs\"v*N[#wSl9zq2^+g;LoB`aGh{3.HIu4fbK)mU8|dMET><,Qc\\C1yxJ", objArr2);
                    ap.invoke(obj, objArr);
                    i2++;
                    con = con;
                    i = 1;
                }
                return (String) obj.getClass().getDeclaredMethod('toString', new Class[0]).invoke(obj, new Object[0]);
            } catch (Throwable th) {
                return "";
            }
        } catch (Throwable th2) {
            return "";
        }
    }
}
