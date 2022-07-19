.class public Lcom/uc/crashsdk/CrashLogFilesUploader;
.super Landroid/app/Service;
.source "ProGuard"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/CrashLogFilesUploader;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/CrashLogFilesUploader;->b:Z

    return-void
.end method

.method public static a(I[Ljava/lang/Object;)V
    .locals 2

    .line 46
    const/16 v0, 0x258

    const/16 v1, 0x259

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_1

    .line 67
    sget-boolean p0, Lcom/uc/crashsdk/CrashLogFilesUploader;->a:Z

    if-eqz p0, :cond_0

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 60
    :cond_1
    sget-boolean p0, Lcom/uc/crashsdk/CrashLogFilesUploader;->a:Z

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 61
    :cond_3
    :goto_0
    const/4 p0, 0x0

    aget-object p0, p1, p0

    check-cast p0, Landroid/app/Service;

    .line 62
    const-string p1, "Crash log upload service done, exiting"

    invoke-static {p1}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 63
    return-void

    .line 49
    :cond_4
    :try_start_0
    const-string p0, "Service uploading logs ..."

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/e;->i()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 54
    :goto_1
    const/4 p0, 0x2

    new-instance v0, Lcom/uc/crashsdk/a/e;

    invoke-direct {v0, v1, p1}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 91
    invoke-static {}, Lcom/uc/crashsdk/h;->V()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 95
    if-nez v1, :cond_0

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Ucebu can not list folder: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;)V

    .line 97
    return-void

    .line 99
    :cond_0
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ucebu"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uc/crashsdk/CrashLogFilesUploader;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 109
    return-void

    .line 99
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_2
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 87
    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 22
    invoke-static {}, Lcom/uc/crashsdk/h;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    invoke-static {}, Lcom/uc/crashsdk/b;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    const-string p1, "crashsdk"

    const-string p2, "CrashLogFilesUploader should not use main process!"

    invoke-static {p1, p2}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-boolean p1, p0, Lcom/uc/crashsdk/CrashLogFilesUploader;->b:Z

    if-nez p1, :cond_1

    .line 35
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uc/crashsdk/CrashLogFilesUploader;->b:Z

    .line 37
    new-instance p2, Lcom/uc/crashsdk/a/e;

    const/16 p3, 0x258

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-direct {p2, p3, v0}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    .line 42
    :cond_1
    const/4 p1, 0x2

    return p1

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Must initialize crashsdk for current process ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "), or set CustomInfo.mUploadUcebuCrashLog as false!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
