.class public Lhyperkin/smartboyserial/h;
.super Landroid/os/Handler;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Ljava/lang/Runnable;

.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/String;

.field public c:Lhyperkin/smartboyserial/PiracyCheckService;

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:J

.field private f:Lhyperkin/smartboyserial/a;

.field private g:Lhyperkin/smartboyserial/a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private final o:I

.field private final p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lhyperkin/smartboyserial/RomBuilderActivity;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/io/FileOutputStream;

.field private r:Z

.field private s:Z

.field private t:J

.field private u:J

.field private v:I

.field private w:Lhyperkin/smartboyserial/RomBuilderActivity$c;

.field private x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lhyperkin/smartboyserial/RomBuilderActivity;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhyperkin/smartboyserial/h;->e:J

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    new-instance v0, Lhyperkin/smartboyserial/a;

    invoke-direct {v0}, Lhyperkin/smartboyserial/a;-><init>()V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    new-instance v0, Lhyperkin/smartboyserial/a;

    invoke-direct {v0}, Lhyperkin/smartboyserial/a;-><init>()V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->g:Lhyperkin/smartboyserial/a;

    const-string v0, "com.hyperkin.smartboy.sb.redump"

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->i:Ljava/lang/String;

    const/16 v0, 0x4000

    iput v0, p0, Lhyperkin/smartboyserial/h;->l:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhyperkin/smartboyserial/h;->m:J

    const/16 v0, 0xbb8

    iput v0, p0, Lhyperkin/smartboyserial/h;->o:I

    iput-boolean v2, p0, Lhyperkin/smartboyserial/h;->r:Z

    iput-boolean v2, p0, Lhyperkin/smartboyserial/h;->s:Z

    const/4 v0, -0x1

    iput v0, p0, Lhyperkin/smartboyserial/h;->v:I

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$c;->a:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->w:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$e;->a:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-boolean v3, p0, Lhyperkin/smartboyserial/h;->y:Z

    iput-boolean v2, p0, Lhyperkin/smartboyserial/h;->z:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->A:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lhyperkin/smartboyserial/h$1;

    invoke-direct {v0, p0}, Lhyperkin/smartboyserial/h$1;-><init>(Lhyperkin/smartboyserial/h;)V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->B:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(II)J
    .locals 2

    mul-int v0, p1, p2

    int-to-long v0, v0

    return-wide v0
.end method

.method private a([B)Lhyperkin/smartboyserial/RomBuilderActivity$d;
    .locals 4

    const/4 v3, 0x5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    array-length v1, p1

    if-lez v1, :cond_0

    array-length v1, p1

    if-gt v1, v3, :cond_0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->c:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    if-gt v1, v3, :cond_1

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->g:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    goto :goto_0

    :cond_1
    array-length v1, p1

    if-lez v1, :cond_2

    array-length v1, p1

    if-gt v1, v3, :cond_2

    const-string v1, "nr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->f:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    goto :goto_0

    :cond_2
    array-length v1, p1

    if-lez v1, :cond_3

    array-length v1, p1

    if-gt v1, v3, :cond_3

    const-string v1, "rom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->d:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    goto :goto_0

    :cond_3
    array-length v1, p1

    if-lez v1, :cond_4

    array-length v1, p1

    if-gt v1, v3, :cond_4

    const-string v1, "srm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->e:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    goto :goto_0

    :cond_4
    array-length v1, p1

    if-lez v1, :cond_5

    array-length v1, p1

    if-gt v1, v3, :cond_5

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->a:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    goto :goto_0

    :cond_5
    array-length v1, p1

    if-lez v1, :cond_6

    array-length v1, p1

    if-gt v1, v3, :cond_6

    const-string v1, "vs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->b:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    goto :goto_0

    :cond_6
    iget v1, p0, Lhyperkin/smartboyserial/h;->v:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->h:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    goto :goto_0

    :cond_7
    array-length v1, p1

    if-lez v1, :cond_8

    array-length v1, p1

    if-gt v1, v3, :cond_8

    const-string v1, "rb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->i:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$d;->j:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    goto/16 :goto_0
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v1, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->i:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " seconds\nFile locations\nROM\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/sdcard/HyperkinSmartboySerial"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lhyperkin/smartboyserial/h;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v1, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->i:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\nSRAM\n/sdcard/HyperkinSmartboySerial/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    const-string v1, "Hello from end dump\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serial Dump time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lhyperkin/smartboyserial/h;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lhyperkin/smartboyserial/h;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const v6, 0x7f0a0008

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Writing cartridge data to file"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->c()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->e([B)V

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->g:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Writing cartridge save to file"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->x()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->g:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->c()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->f([B)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v1, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$e;->c:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    const/4 v0, -0x1

    iput v0, p0, Lhyperkin/smartboyserial/h;->v:I

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->m:J

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->p()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected cart size (bytes): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->p()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw # bytes received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhyperkin/smartboyserial/h;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhyperkin/smartboyserial/h;->y:Z

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->e()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->h()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->h:Lhyperkin/smartboyserial/c;

    invoke-virtual {v0, p1}, Lhyperkin/smartboyserial/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing cart data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from cache database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->h:Lhyperkin/smartboyserial/c;

    invoke-virtual {v0, p1}, Lhyperkin/smartboyserial/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->e([B)V

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lhyperkin/smartboyserial/h;->e:J

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->h:Lhyperkin/smartboyserial/c;

    invoke-virtual {v0, p1}, Lhyperkin/smartboyserial/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing cart game save for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from cache database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->x()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->h:Lhyperkin/smartboyserial/c;

    invoke-virtual {v0, p1}, Lhyperkin/smartboyserial/c;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->f([B)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected cart size (bytes): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->p()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw # bytes received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lhyperkin/smartboyserial/h;)Z
    .locals 1

    iget-boolean v0, p0, Lhyperkin/smartboyserial/h;->z:Z

    return v0
.end method

.method private b([B)V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found new cart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found new cartridge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->j()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->A:Landroid/os/Handler;

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->j()V

    invoke-virtual {p0}, Lhyperkin/smartboyserial/h;->a()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->A:Landroid/os/Handler;

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lhyperkin/smartboyserial/h;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Dismissing piracy notice\nRedumping..."

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Same cartridge detected"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Restarting dump process"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lhyperkin/smartboyserial/h;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Loading cartridge from cache"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Different cartridge detected"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous cart name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhyperkin/smartboyserial/h;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current cart name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lhyperkin/smartboyserial/h;->d()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->h:Lhyperkin/smartboyserial/c;

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lhyperkin/smartboyserial/h;->d()V

    goto/16 :goto_0
.end method

.method private c([B)V
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v2, p0, Lhyperkin/smartboyserial/h;->j:I

    :goto_0
    iget v0, p0, Lhyperkin/smartboyserial/h;->j:I

    iget v1, p0, Lhyperkin/smartboyserial/h;->k:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lhyperkin/smartboyserial/h;->j:I

    iput v0, p0, Lhyperkin/smartboyserial/h;->k:I

    iget v0, p0, Lhyperkin/smartboyserial/h;->k:I

    iget v1, p0, Lhyperkin/smartboyserial/h;->l:I

    invoke-direct {p0, v0, v1}, Lhyperkin/smartboyserial/h;->a(II)J

    move-result-wide v0

    iput-wide v0, p0, Lhyperkin/smartboyserial/h;->n:J

    :cond_0
    iget v0, p0, Lhyperkin/smartboyserial/h;->j:I

    iget v1, p0, Lhyperkin/smartboyserial/h;->l:I

    invoke-direct {p0, v0, v1}, Lhyperkin/smartboyserial/h;->a(II)J

    move-result-wide v0

    iput-wide v0, p0, Lhyperkin/smartboyserial/h;->m:J

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cart has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lhyperkin/smartboyserial/h;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rom banks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    iput v0, p0, Lhyperkin/smartboyserial/h;->j:I

    goto :goto_0

    :cond_3
    const-string v1, "008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x8

    iput v0, p0, Lhyperkin/smartboyserial/h;->j:I

    goto :goto_0

    :cond_4
    const-string v1, "016"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x10

    iput v0, p0, Lhyperkin/smartboyserial/h;->j:I

    goto :goto_0

    :cond_5
    const-string v1, "032"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x20

    iput v0, p0, Lhyperkin/smartboyserial/h;->j:I

    goto/16 :goto_0

    :cond_6
    const-string v1, "064"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x40

    iput v0, p0, Lhyperkin/smartboyserial/h;->j:I

    goto/16 :goto_0

    :cond_7
    const-string v1, "128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x80

    iput v0, p0, Lhyperkin/smartboyserial/h;->j:I

    goto/16 :goto_0

    :cond_8
    const-string v1, "256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x100

    iput v0, p0, Lhyperkin/smartboyserial/h;->j:I

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lhyperkin/smartboyserial/h;->j:I

    goto/16 :goto_0
.end method

.method private d([B)V
    .locals 3

    iget v0, p0, Lhyperkin/smartboyserial/h;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$e;->b:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received from MCU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received from MCU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e([B)V
    .locals 3

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/HyperkinSmartboySerial"

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->s()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->s()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private f([B)V
    .locals 3

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/HyperkinSmartboySerial"

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private g([B)V
    .locals 4

    iget v0, p0, Lhyperkin/smartboyserial/h;->v:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lhyperkin/smartboyserial/h;->e([B)V

    :goto_1
    iget-wide v0, p0, Lhyperkin/smartboyserial/h;->e:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lhyperkin/smartboyserial/h;->e:J

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->s()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0, p1}, Lhyperkin/smartboyserial/a;->a([B)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lhyperkin/smartboyserial/h;->f([B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->g:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0, p1}, Lhyperkin/smartboyserial/a;->a([B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized i()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lhyperkin/smartboyserial/h;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lhyperkin/smartboyserial/h;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhyperkin/smartboyserial/h;->e:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lhyperkin/smartboyserial/h;->t:J

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$e;->a:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-boolean v3, p0, Lhyperkin/smartboyserial/h;->r:Z

    const/4 v0, -0x1

    iput v0, p0, Lhyperkin/smartboyserial/h;->v:I

    iput-boolean v3, p0, Lhyperkin/smartboyserial/h;->s:Z

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->v()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    const-string v2, "Hello from start dump\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v2, "Hello from start dump state"

    invoke-virtual {v0, v2}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0a0008

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v1, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lhyperkin/smartboyserial/h;->u:J

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$e;->c:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    const/4 v0, -0x1

    iput v0, p0, Lhyperkin/smartboyserial/h;->v:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lhyperkin/smartboyserial/h;->b()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lhyperkin/smartboyserial/h;->a(J)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serial Dump time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v1, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->a:Landroid/content/Context;

    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->y()V

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->m:J

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->p()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected cart size (bytes): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->p()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw # bytes received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iput-boolean v8, p0, Lhyperkin/smartboyserial/h;->r:Z

    iput-boolean v7, p0, Lhyperkin/smartboyserial/h;->y:Z

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->e()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->h()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->z()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Current cache"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->h:Lhyperkin/smartboyserial/c;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v1, v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v8, p0, Lhyperkin/smartboyserial/h;->r:Z

    iput-boolean v7, p0, Lhyperkin/smartboyserial/h;->y:Z

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->e()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->h()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected cart size (bytes): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->p()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw # bytes received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private m()Z
    .locals 4

    iget-wide v0, p0, Lhyperkin/smartboyserial/h;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->i:Landroid/widget/TextView;

    const-string v1, "Starting to dump ROM...\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    const-string v1, "Hello from rom data\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Hello from rom data state"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$e;->b:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    iput v0, p0, Lhyperkin/smartboyserial/h;->v:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhyperkin/smartboyserial/h;->s:Z

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->i:Landroid/widget/TextView;

    const-string v1, "Starting to dump SRM...\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    const-string v1, "Hello from sram data\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Hello from SRAM data state"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$e;->b:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    const/4 v0, 0x2

    iput v0, p0, Lhyperkin/smartboyserial/h;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhyperkin/smartboyserial/h;->s:Z

    return-void
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    sget-object v1, Lhyperkin/smartboyserial/RomBuilderActivity$e;->b:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->r()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhyperkin/smartboyserial/h;->r:Z

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$e;->a:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->q:Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->i()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->d()V

    iget-boolean v0, p0, Lhyperkin/smartboyserial/h;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->d()V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "no cartridge; starting pirarcy alert..."

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->i:Ljava/lang/String;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->c:Lhyperkin/smartboyserial/PiracyCheckService;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/HyperkinSmartboySerial/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lhyperkin/smartboyserial/PiracyCheckService;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->c:Lhyperkin/smartboyserial/PiracyCheckService;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhyperkin/smartboyserial/PiracyCheckService;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->A:Landroid/os/Handler;

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private q()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    const-string v1, "Received SERIAL MODE\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Received SERIAL Mode"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$e;->a:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$c;->a:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->w:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    iput-boolean v2, p0, Lhyperkin/smartboyserial/h;->r:Z

    const/4 v0, -0x1

    iput v0, p0, Lhyperkin/smartboyserial/h;->v:I

    iput-boolean v2, p0, Lhyperkin/smartboyserial/h;->s:Z

    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private s()V
    .locals 2

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :goto_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->t()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->u()V

    goto :goto_1
.end method

.method private t()V
    .locals 5

    const/16 v4, 0x63

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/HyperkinSmartboySerial"

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->m:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v1, v0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x64

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge v3, v1, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private u()V
    .locals 5

    const/16 v4, 0x63

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->a()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->m:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v1, v0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x64

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ge v3, v1, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private v()V
    .locals 0

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->w()V

    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->x()V

    return-void
.end method

.method private w()V
    .locals 3

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/HyperkinSmartboySerial"

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Successfully deleted rom data file"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->b()V

    return-void
.end method

.method private x()V
    .locals 3

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/HyperkinSmartboySerial"

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Successfully deleted srm data file"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->g:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->b()V

    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Writing cartridge data to file"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->c()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->e([B)V

    :cond_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->g:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "Writing cartridge save to file"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->g:Lhyperkin/smartboyserial/a;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/a;->c()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->f([B)V

    :cond_1
    return-void
.end method

.method private z()V
    .locals 6

    iget-boolean v0, p0, Lhyperkin/smartboyserial/h;->r:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lhyperkin/smartboyserial/h;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->h:Lhyperkin/smartboyserial/c;

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    iget-object v2, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    invoke-virtual {v2}, Lhyperkin/smartboyserial/a;->c()[B

    move-result-object v2

    iget-object v3, p0, Lhyperkin/smartboyserial/h;->g:Lhyperkin/smartboyserial/a;

    invoke-virtual {v3}, Lhyperkin/smartboyserial/a;->c()[B

    move-result-object v3

    iget-wide v4, p0, Lhyperkin/smartboyserial/h;->m:J

    invoke-virtual/range {v0 .. v5}, Lhyperkin/smartboyserial/c;->a(Ljava/lang/String;[B[BJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v0, v0, Lhyperkin/smartboyserial/RomBuilderActivity;->h:Lhyperkin/smartboyserial/c;

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->h:Ljava/lang/String;

    iget-object v2, p0, Lhyperkin/smartboyserial/h;->f:Lhyperkin/smartboyserial/a;

    invoke-virtual {v2}, Lhyperkin/smartboyserial/a;->c()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, p0, Lhyperkin/smartboyserial/h;->m:J

    invoke-virtual/range {v0 .. v5}, Lhyperkin/smartboyserial/c;->a(Ljava/lang/String;[B[BJ)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->c:Lhyperkin/smartboyserial/PiracyCheckService;

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhyperkin/smartboyserial/PiracyCheckService;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lhyperkin/smartboyserial/h;->r:Z

    return-void
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lhyperkin/smartboyserial/h;->u:J

    iget-wide v2, p0, Lhyperkin/smartboyserial/h;->t:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lhyperkin/smartboyserial/h;->y:Z

    return-void
.end method

.method public c()Z
    .locals 2

    sget-object v0, Lhyperkin/smartboyserial/h$2;->c:[I

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->w:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    invoke-virtual {v1}, Lhyperkin/smartboyserial/RomBuilderActivity$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    invoke-virtual {v0}, Lhyperkin/smartboyserial/RomBuilderActivity;->l()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v1, "sd"

    invoke-virtual {v0, v1}, Lhyperkin/smartboyserial/RomBuilderActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$c;->a:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->w:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    return-void
.end method

.method public f()V
    .locals 1

    sget-object v0, Lhyperkin/smartboyserial/RomBuilderActivity$c;->b:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    iput-object v0, p0, Lhyperkin/smartboyserial/h;->w:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    return-void
.end method

.method public g()Lhyperkin/smartboyserial/RomBuilderActivity$c;
    .locals 1

    iget-object v0, p0, Lhyperkin/smartboyserial/h;->w:Lhyperkin/smartboyserial/RomBuilderActivity$c;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lhyperkin/smartboyserial/h;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v1, Lhyperkin/smartboyserial/h$2;->a:[I

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->a([B)Lhyperkin/smartboyserial/RomBuilderActivity$d;

    move-result-object v2

    invoke-virtual {v2}, Lhyperkin/smartboyserial/RomBuilderActivity$d;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    :goto_1
    sget-object v1, Lhyperkin/smartboyserial/h$2;->b:[I

    iget-object v3, p0, Lhyperkin/smartboyserial/h;->x:Lhyperkin/smartboyserial/RomBuilderActivity$e;

    invoke-virtual {v3}, Lhyperkin/smartboyserial/RomBuilderActivity$e;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    sget-object v1, Lhyperkin/smartboyserial/RomBuilderActivity$d;->j:Lhyperkin/smartboyserial/RomBuilderActivity$d;

    if-ne v2, v1, :cond_0

    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->g([B)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->k()V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->l()V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->n()V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->o()V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->p()V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->b([B)V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->c([B)V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, v0}, Lhyperkin/smartboyserial/h;->d([B)V

    goto :goto_1

    :pswitch_b
    iget-object v1, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-boolean v1, v1, Lhyperkin/smartboyserial/RomBuilderActivity;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperkin/smartboyserial/RomBuilderActivity;

    iget-object v1, v1, Lhyperkin/smartboyserial/RomBuilderActivity;->k:Landroid/widget/TextView;

    const-string v3, "Received USB MODE\n"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lhyperkin/smartboyserial/h;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyperkin/smartboyserial/RomBuilderActivity;

    const-string v3, "Received USB Mode"

    invoke-virtual {v1, v3}, Lhyperkin/smartboyserial/RomBuilderActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lhyperkin/smartboyserial/h;->f()V

    goto :goto_1

    :pswitch_c
    invoke-direct {p0}, Lhyperkin/smartboyserial/h;->q()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
