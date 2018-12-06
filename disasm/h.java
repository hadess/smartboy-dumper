package hyperkin.smartboyserial;

import android.os.Handler;
import android.os.Message;
import hyperkin.smartboyserial.RomBuilderActivity.c;
import hyperkin.smartboyserial.RomBuilderActivity.d;
import hyperkin.smartboyserial.RomBuilderActivity.e;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class h extends Handler {
    private Handler A = new Handler();
    private Runnable B = new Runnable() {
        public void run() {
            h.this.c(h.this.z);
        }
    };
    public Boolean a = Boolean.valueOf(true);
    public String b = "com.hyperkin.smartboy.sb.redump";
    public PiracyCheckService c;
    public AtomicBoolean d = new AtomicBoolean(false);
    private long e = 0;
    private a f = new a();
    private a g = new a();
    private String h = "";
    private String i = "";
    private int j;
    private int k;
    private int l = 16384;
    private long m = -1;
    private long n;
    private final int o = 3000;
    private final WeakReference<RomBuilderActivity> p;
    private FileOutputStream q;
    private boolean r = false;
    private boolean s = false;
    private long t;
    private long u;
    private int v = -1;
    private c w = c.SERIAL_MODE;
    private e x = e.WAIT;
    private boolean y = true;
    private boolean z = false;

    /* renamed from: hyperkin.smartboyserial.h$2 */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] a = new int[d.values().length];

        static {
            c = new int[c.values().length];
            try {
                c[c.SERIAL_MODE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                c[c.USB_MS_MODE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            b = new int[e.values().length];
            try {
                b[e.WAIT.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                b[e.WRITING.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                b[e.WRITING_COMPLETE.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                b[e.USB_COPY.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[d.START_DUMP.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[d.END_DUMP.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[d.ROM_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                a[d.SRM_DATA.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
            try {
                a[d.NO_CART.ordinal()] = 5;
            } catch (NoSuchFieldError e11) {
            }
            try {
                a[d.GAME_NAME.ordinal()] = 6;
            } catch (NoSuchFieldError e12) {
            }
            try {
                a[d.ROM_BANKS.ordinal()] = 7;
            } catch (NoSuchFieldError e13) {
            }
            try {
                a[d.IGNORE.ordinal()] = 8;
            } catch (NoSuchFieldError e14) {
            }
            try {
                a[d.USB_MS.ordinal()] = 9;
            } catch (NoSuchFieldError e15) {
            }
            try {
                a[d.SERIAL_COM.ordinal()] = 10;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    public h(RomBuilderActivity romBuilderActivity) {
        this.p = new WeakReference(romBuilderActivity);
    }

    private long a(int i, int i2) {
        return (long) (i * i2);
    }

    private d a(byte[] bArr) {
        String str = new String(bArr);
        return (bArr.length <= 0 || bArr.length > 5 || !str.equals("start")) ? (bArr.length <= 0 || bArr.length > 5 || !str.equals("end")) ? (bArr.length <= 0 || bArr.length > 5 || !str.equals("nr")) ? (bArr.length <= 0 || bArr.length > 5 || !str.equals("rom")) ? (bArr.length <= 0 || bArr.length > 5 || !str.equals("srm")) ? (bArr.length <= 0 || bArr.length > 5 || !str.equals("ms")) ? (bArr.length <= 0 || bArr.length > 5 || !str.equals("vs")) ? (this.v == -1 && str.startsWith("nm")) ? d.GAME_NAME : (bArr.length <= 0 || bArr.length > 5 || !str.startsWith("rb")) ? d.IGNORE : d.ROM_BANKS : d.SERIAL_COM : d.USB_MS : d.SRM_DATA : d.ROM_DATA : d.NO_CART : d.END_DUMP : d.START_DUMP;
    }

    private void a(long j) {
        if (((RomBuilderActivity) this.p.get()).c) {
            ((RomBuilderActivity) this.p.get()).i.append("Dump time: " + j + " seconds\nFile locations\nROM\n" + "/sdcard/HyperkinSmartboySerial" + "/" + ((RomBuilderActivity) this.p.get()).f);
        }
        if (this.s && ((RomBuilderActivity) this.p.get()).c) {
            ((RomBuilderActivity) this.p.get()).i.append("\n\nSRAM\n/sdcard/HyperkinSmartboySerial/" + ((RomBuilderActivity) this.p.get()).g + "\n");
        }
        if (((RomBuilderActivity) this.p.get()).d) {
            ((RomBuilderActivity) this.p.get()).k.append("Hello from end dump\n");
            ((RomBuilderActivity) this.p.get()).k.append("Serial Dump time: " + j + " seconds\n");
        }
    }

    private void a(String str) {
        if (this.a.booleanValue() && str.equals(this.i)) {
            if (!this.f.d()) {
                ((RomBuilderActivity) this.p.get()).b("Writing cartridge data to file");
                e(this.f.c());
            }
            if (!this.g.d()) {
                ((RomBuilderActivity) this.p.get()).b("Writing cartridge save to file");
                x();
                f(this.g.c());
            }
        } else if (this.a.booleanValue() && ((RomBuilderActivity) this.p.get()).h.c(str)) {
            ((RomBuilderActivity) this.p.get()).b("Writing cart data for " + str + " from cache database");
            byte[] a = ((RomBuilderActivity) this.p.get()).h.a(str);
            e(a);
            this.e = (long) a.length;
            if (((RomBuilderActivity) this.p.get()).h.d(str)) {
                ((RomBuilderActivity) this.p.get()).b("Writing cart game save for " + str + " from cache database");
                x();
                f(((RomBuilderActivity) this.p.get()).h.b(str));
            }
        }
        ((RomBuilderActivity) this.p.get()).i.setText(((RomBuilderActivity) this.p.get()).a.getString(2131361800));
        ((RomBuilderActivity) this.p.get()).q.setProgress(100);
        ((RomBuilderActivity) this.p.get()).q.setVisibility(4);
        this.x = e.WRITING_COMPLETE;
        this.q = null;
        this.v = -1;
        if (this.m == ((RomBuilderActivity) this.p.get()).p()) {
            ((RomBuilderActivity) this.p.get()).b("Expected cart size (bytes): " + this.m);
            ((RomBuilderActivity) this.p.get()).b("Received " + ((RomBuilderActivity) this.p.get()).p() + " bytes");
            ((RomBuilderActivity) this.p.get()).b("Raw # bytes received: " + this.e);
            this.r = true;
            this.y = false;
            ((RomBuilderActivity) this.p.get()).e();
            ((RomBuilderActivity) this.p.get()).h();
            ((RomBuilderActivity) this.p.get()).a(((RomBuilderActivity) this.p.get()).a.getString(2131361800));
            return;
        }
        ((RomBuilderActivity) this.p.get()).b("Expected cart size (bytes): " + this.m);
        ((RomBuilderActivity) this.p.get()).b("Received " + ((RomBuilderActivity) this.p.get()).p() + " bytes");
        ((RomBuilderActivity) this.p.get()).b("Raw # bytes received: " + this.e);
    }

    private void b(byte[] bArr) {
        String str = new String(bArr);
        if (!this.h.equals(str.substring(2))) {
            this.h = str.substring(2);
            ((RomBuilderActivity) this.p.get()).b("Found new cart: " + this.h);
            if (((RomBuilderActivity) this.p.get()).d) {
                ((RomBuilderActivity) this.p.get()).k.append("Found new cartridge: " + this.h + "\n");
            }
        }
    }

    private void c(boolean z) {
        if (z) {
            j();
            this.A.postDelayed(this.B, 3000);
            return;
        }
        j();
        a();
        this.d.set(false);
        this.A.removeCallbacks(this.B);
        if (!this.y) {
            ((RomBuilderActivity) this.p.get()).b("Dismissing piracy notice\nRedumping...");
            if (this.h.equals(this.i)) {
                ((RomBuilderActivity) this.p.get()).b("Same cartridge detected");
                if (this.a.booleanValue()) {
                    ((RomBuilderActivity) this.p.get()).b("Loading cartridge from cache");
                    a(this.h);
                    return;
                }
                ((RomBuilderActivity) this.p.get()).b("Restarting dump process");
                d();
                return;
            }
            ((RomBuilderActivity) this.p.get()).b("Different cartridge detected");
            ((RomBuilderActivity) this.p.get()).b("Previous cart name: " + this.i);
            ((RomBuilderActivity) this.p.get()).b("Current cart name: " + this.h);
            if (!this.a.booleanValue()) {
                d();
            } else if (((RomBuilderActivity) this.p.get()).h.c(this.h)) {
                a(this.h);
            } else {
                d();
            }
        }
    }

    private void c(byte[] bArr) {
        String substring = new String(bArr).substring(2);
        if (substring.equals("002")) {
            this.j = 2;
        } else if (substring.equals("004")) {
            this.j = 4;
        } else if (substring.equals("008")) {
            this.j = 8;
        } else if (substring.equals("016")) {
            this.j = 16;
        } else if (substring.equals("032")) {
            this.j = 32;
        } else if (substring.equals("064")) {
            this.j = 64;
        } else if (substring.equals("128")) {
            this.j = 128;
        } else if (substring.equals("256")) {
            this.j = 256;
        } else {
            this.j = 0;
        }
        if (this.j != this.k) {
            this.k = this.j;
            this.n = a(this.k, this.l);
        }
        this.m = a(this.j, this.l);
        if (((RomBuilderActivity) this.p.get()).d) {
            ((RomBuilderActivity) this.p.get()).b("Cart has " + this.j + " rom banks");
        }
    }

    private void d(byte[] bArr) {
        if (this.v != -1) {
            this.x = e.WRITING;
            return;
        }
        if (((RomBuilderActivity) this.p.get()).d) {
            ((RomBuilderActivity) this.p.get()).k.append("Message received from MCU: " + new String(bArr) + "\n");
        }
        ((RomBuilderActivity) this.p.get()).b("Message received from MCU: " + new String(bArr));
    }

    private void e(byte[] bArr) {
        File file = new File("/sdcard/HyperkinSmartboySerial", ((RomBuilderActivity) this.p.get()).f);
        if (file.exists()) {
            try {
                this.q = new FileOutputStream(file, true);
                this.q.write(bArr);
                this.q.close();
                s();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } else if (file.getParentFile().exists() || file.getParentFile().mkdirs()) {
            try {
                file.createNewFile();
                this.q = new FileOutputStream(file, false);
                this.q.write(bArr);
                this.q.close();
                s();
            } catch (IOException e22) {
                e22.printStackTrace();
            }
        }
    }

    private void f(byte[] bArr) {
        File file = new File("/sdcard/HyperkinSmartboySerial", ((RomBuilderActivity) this.p.get()).g);
        if (file.exists()) {
            try {
                this.q = new FileOutputStream(file, true);
                this.q.write(bArr);
                this.q.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } else if (file.getParentFile().exists() || file.getParentFile().mkdirs()) {
            try {
                file.createNewFile();
                this.q = new FileOutputStream(file, false);
                this.q.write(bArr);
                this.q.close();
            } catch (IOException e3) {
            }
        }
    }

    private void g(byte[] bArr) {
        switch (this.v) {
            case 1:
                if (this.a.booleanValue()) {
                    this.f.a(bArr);
                } else {
                    e(bArr);
                }
                this.e += (long) bArr.length;
                s();
                return;
            case 2:
                if (this.a.booleanValue()) {
                    this.g.a(bArr);
                    return;
                } else {
                    f(bArr);
                    return;
                }
            default:
                return;
        }
    }

    private synchronized void i() {
        this.z = true;
    }

    private synchronized void j() {
        this.z = false;
    }

    private void k() {
        this.e = 0;
        this.t = System.nanoTime();
        this.x = e.WAIT;
        this.r = false;
        this.v = -1;
        this.s = false;
        String string = ((RomBuilderActivity) this.p.get()).getResources().getString(2131361799);
        ((RomBuilderActivity) this.p.get()).i.setText(string);
        ((RomBuilderActivity) this.p.get()).k.setText("");
        ((RomBuilderActivity) this.p.get()).q.setProgress(0);
        ((RomBuilderActivity) this.p.get()).q.setVisibility(0);
        v();
        if (((RomBuilderActivity) this.p.get()).d) {
            ((RomBuilderActivity) this.p.get()).k.append("Hello from start dump\n");
        }
        ((RomBuilderActivity) this.p.get()).b("Hello from start dump state");
        if (m()) {
            this.a = Boolean.valueOf(false);
            ((RomBuilderActivity) this.p.get()).a(string);
        }
    }

    private void l() {
        ((RomBuilderActivity) this.p.get()).i.setText(((RomBuilderActivity) this.p.get()).a.getString(2131361800));
        ((RomBuilderActivity) this.p.get()).q.setProgress(100);
        ((RomBuilderActivity) this.p.get()).q.setVisibility(4);
        this.u = System.nanoTime();
        this.x = e.WRITING_COMPLETE;
        this.q = null;
        this.v = -1;
        long convert = TimeUnit.SECONDS.convert(b(), TimeUnit.NANOSECONDS);
        a(convert);
        ((RomBuilderActivity) this.p.get()).b("Serial Dump time: " + convert + " seconds");
        ((RomBuilderActivity) this.p.get()).k.append(((RomBuilderActivity) this.p.get()).a.getString(2131361801));
        y();
        if (this.m == ((RomBuilderActivity) this.p.get()).p()) {
            ((RomBuilderActivity) this.p.get()).b("Expected cart size (bytes): " + this.m);
            ((RomBuilderActivity) this.p.get()).b("Received " + ((RomBuilderActivity) this.p.get()).p() + " bytes");
            ((RomBuilderActivity) this.p.get()).b("Raw # bytes received: " + this.e);
            this.r = true;
            this.y = false;
            ((RomBuilderActivity) this.p.get()).e();
            ((RomBuilderActivity) this.p.get()).h();
            ((RomBuilderActivity) this.p.get()).a(((RomBuilderActivity) this.p.get()).a.getString(2131361800));
            z();
            ((RomBuilderActivity) this.p.get()).b("Current cache");
            for (String b : ((RomBuilderActivity) this.p.get()).h.a()) {
                ((RomBuilderActivity) this.p.get()).b(b);
            }
            return;
        }
        if (m()) {
            this.r = true;
            this.y = false;
            ((RomBuilderActivity) this.p.get()).e();
            ((RomBuilderActivity) this.p.get()).h();
            ((RomBuilderActivity) this.p.get()).a(((RomBuilderActivity) this.p.get()).a.getString(2131361800));
        }
        ((RomBuilderActivity) this.p.get()).b("Expected cart size (bytes): " + this.m);
        ((RomBuilderActivity) this.p.get()).b("Received " + ((RomBuilderActivity) this.p.get()).p() + " bytes");
        ((RomBuilderActivity) this.p.get()).b("Raw # bytes received: " + this.e);
    }

    private boolean m() {
        return this.m == -1 && this.h.isEmpty();
    }

    private void n() {
        if (((RomBuilderActivity) this.p.get()).c) {
            ((RomBuilderActivity) this.p.get()).i.append("Starting to dump ROM...\n");
        }
        if (((RomBuilderActivity) this.p.get()).d) {
            ((RomBuilderActivity) this.p.get()).k.append("Hello from rom data\n");
        }
        ((RomBuilderActivity) this.p.get()).b("Hello from rom data state");
        this.x = e.WRITING;
        this.q = null;
        this.v = 1;
        this.s = false;
    }

    private void o() {
        if (((RomBuilderActivity) this.p.get()).c) {
            ((RomBuilderActivity) this.p.get()).i.append("Starting to dump SRM...\n");
        }
        if (((RomBuilderActivity) this.p.get()).d) {
            ((RomBuilderActivity) this.p.get()).k.append("Hello from sram data\n");
        }
        ((RomBuilderActivity) this.p.get()).b("Hello from SRAM data state");
        this.x = e.WRITING;
        this.q = null;
        this.v = 2;
        this.s = true;
    }

    private void p() {
        if (this.x == e.WRITING) {
            r();
        }
        this.r = false;
        this.x = e.WAIT;
        this.q = null;
        i();
        ((RomBuilderActivity) this.p.get()).i.setText("");
        ((RomBuilderActivity) this.p.get()).d();
        if (!this.y && !this.d.get()) {
            this.d.set(true);
            ((RomBuilderActivity) this.p.get()).i.setText("");
            ((RomBuilderActivity) this.p.get()).d();
            ((RomBuilderActivity) this.p.get()).b("no cartridge; starting pirarcy alert...");
            this.i = this.h;
            PiracyCheckService piracyCheckService = this.c;
            PiracyCheckService.a(((RomBuilderActivity) this.p.get()).getApplicationContext(), "/sdcard/HyperkinSmartboySerial/" + ((RomBuilderActivity) this.p.get()).f);
            piracyCheckService = this.c;
            PiracyCheckService.a(((RomBuilderActivity) this.p.get()).getApplicationContext());
            ((RomBuilderActivity) this.p.get()).a(((RomBuilderActivity) this.p.get()).getApplicationContext().getResources().getString(2131361803));
            this.A.postDelayed(this.B, 3000);
        }
    }

    private void q() {
        if (((RomBuilderActivity) this.p.get()).d) {
            ((RomBuilderActivity) this.p.get()).k.append("Received SERIAL MODE\n");
        }
        ((RomBuilderActivity) this.p.get()).b("Received SERIAL Mode");
        this.x = e.WAIT;
        this.w = c.SERIAL_MODE;
        this.r = false;
        this.v = -1;
        this.s = false;
    }

    private void r() {
        ((RomBuilderActivity) this.p.get()).q.setProgress(0);
        ((RomBuilderActivity) this.p.get()).q.setVisibility(4);
    }

    private void s() {
        if (m()) {
            ((RomBuilderActivity) this.p.get()).q.setIndeterminate(true);
        } else {
            ((RomBuilderActivity) this.p.get()).q.setIndeterminate(false);
        }
        if (this.a.booleanValue()) {
            u();
        } else {
            t();
        }
    }

    private void t() {
        File file = new File("/sdcard/HyperkinSmartboySerial", ((RomBuilderActivity) this.p.get()).f);
        if (file.exists()) {
            int length = (int) ((((double) file.length()) / ((double) this.m)) * 100.0d);
            String string = ((RomBuilderActivity) this.p.get()).getResources().getString(2131361799);
            if (length >= 100) {
                ((RomBuilderActivity) this.p.get()).q.setProgress(99);
                ((RomBuilderActivity) this.p.get()).a(string + " " + 99 + "%");
                return;
            }
            int progress = ((RomBuilderActivity) this.p.get()).q.getProgress();
            ((RomBuilderActivity) this.p.get()).q.setProgress(length);
            if (progress < length) {
                ((RomBuilderActivity) this.p.get()).a(string + " " + length + "%");
            }
        }
    }

    private void u() {
        int a = (int) ((((double) this.f.a()) / ((double) this.m)) * 100.0d);
        String string = ((RomBuilderActivity) this.p.get()).getResources().getString(2131361799);
        if (a >= 100) {
            ((RomBuilderActivity) this.p.get()).q.setProgress(99);
            ((RomBuilderActivity) this.p.get()).a(string + " " + 99 + "%");
            return;
        }
        int progress = ((RomBuilderActivity) this.p.get()).q.getProgress();
        ((RomBuilderActivity) this.p.get()).q.setProgress(a);
        if (progress < a) {
            ((RomBuilderActivity) this.p.get()).a(string + " " + a + "%");
        }
    }

    private void v() {
        w();
        x();
    }

    private void w() {
        File file = new File("/sdcard/HyperkinSmartboySerial", ((RomBuilderActivity) this.p.get()).f);
        if (file.exists() && file.delete()) {
            ((RomBuilderActivity) this.p.get()).b("Successfully deleted rom data file");
        }
        this.f.b();
    }

    private void x() {
        File file = new File("/sdcard/HyperkinSmartboySerial", ((RomBuilderActivity) this.p.get()).g);
        if (file.exists() && file.delete()) {
            ((RomBuilderActivity) this.p.get()).b("Successfully deleted srm data file");
        }
        this.g.b();
    }

    private void y() {
        if (this.a.booleanValue()) {
            if (!this.f.d()) {
                ((RomBuilderActivity) this.p.get()).b("Writing cartridge data to file");
                e(this.f.c());
            }
            if (!this.g.d()) {
                ((RomBuilderActivity) this.p.get()).b("Writing cartridge save to file");
                f(this.g.c());
            }
        }
    }

    private void z() {
        if (!this.r) {
            return;
        }
        if (this.s) {
            ((RomBuilderActivity) this.p.get()).h.a(this.h, this.f.c(), this.g.c(), this.m);
        } else {
            ((RomBuilderActivity) this.p.get()).h.a(this.h, this.f.c(), null, this.m);
        }
    }

    public void a() {
        PiracyCheckService piracyCheckService = this.c;
        PiracyCheckService.b(((RomBuilderActivity) this.p.get()).getApplicationContext());
    }

    public void a(boolean z) {
        this.r = z;
    }

    public long b() {
        return this.u - this.t;
    }

    public void b(boolean z) {
        this.y = z;
    }

    public boolean c() {
        switch (this.w) {
            case SERIAL_MODE:
                ((RomBuilderActivity) this.p.get()).c("sd");
                break;
            case USB_MS_MODE:
                ((RomBuilderActivity) this.p.get()).l();
                break;
        }
        return true;
    }

    public void d() {
        ((RomBuilderActivity) this.p.get()).c("sd");
    }

    public void e() {
        this.w = c.SERIAL_MODE;
    }

    public void f() {
        this.w = c.USB_MS_MODE;
    }

    public c g() {
        return this.w;
    }

    public boolean h() {
        return !this.z;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                byte[] bArr = (byte[]) message.obj;
                int[] iArr = AnonymousClass2.a;
                d a = a(bArr);
                switch (iArr[a.ordinal()]) {
                    case 1:
                        k();
                        break;
                    case 2:
                        l();
                        break;
                    case 3:
                        n();
                        break;
                    case 4:
                        o();
                        break;
                    case 5:
                        p();
                        break;
                    case 6:
                        b(bArr);
                        break;
                    case 7:
                        c(bArr);
                        break;
                    case 8:
                        d(bArr);
                        break;
                    case 9:
                        if (((RomBuilderActivity) this.p.get()).d) {
                            ((RomBuilderActivity) this.p.get()).k.append("Received USB MODE\n");
                        }
                        ((RomBuilderActivity) this.p.get()).b("Received USB Mode");
                        f();
                        break;
                    case 10:
                        q();
                        break;
                }
                switch (this.x) {
                    case WRITING:
                        if (a == d.IGNORE) {
                            g(bArr);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            default:
                return;
        }
    }
}
