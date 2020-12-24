package c.a.a.c;

import android.util.Base64;

public class a extends b {
    @Override // c.a.a.d.a
    public String a(String input, int key) {
        byte[] out = new byte[input.length()];
        byte[] in = Base64.decode(input, 0);
        for (int i = 0; i < in.length; i++) {
            out[i] = (byte) (in[i] ^ key);
        }
        return new String(out).trim();
    }
}
