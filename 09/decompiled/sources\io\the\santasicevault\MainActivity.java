package io.the.santasicevault;

import a.b.k.c;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import c.a.a.e.a;

public class MainActivity extends c {
    public EditText s;
    public final a t = new a();

    @Override // androidx.activity.ComponentActivity, a.h.d.d, a.b.k.c, a.k.a.d
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        this.s = (EditText) findViewById(R.id.et);
        ((Button) findViewById(R.id.btn)).setOnClickListener(new c.a.a.a(this));
    }

    /* access modifiers changed from: private */
    /* renamed from: E */
    public /* synthetic */ void F(View view) {
        if (new c.a.a.b.a().a(getApplicationContext(), this.s.getText().toString()).equals("\\83>yTRHm:|fh3::h<bjhc3CJ")) {
            Toast.makeText(this, "You got it!", 0).show();
        } else {
            Toast.makeText(this, "Sorry. Try again.", 0).show();
        }
    }

    @Override // a.b.k.c, a.k.a.d
    public void onStart() {
        super.onStart();
        this.t.a(getApplicationContext());
    }

    @Override // a.b.k.c, a.k.a.d
    public void onStop() {
        this.t.b(getApplicationContext());
        super.onStop();
    }
}
