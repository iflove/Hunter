.class Lcom/alipay/mobile/quinox/startup/NativeCrashHelper;
.super Ljava/lang/Object;
.source "NativeCrashHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isUselessCrash(Ljava/lang/String;)Z
    .locals 2
    .param p0, "nativeCrashInfo"    # Ljava/lang/String;

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 15
    :cond_0
    const-string v0, "dvmLinearAlloc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    const-string v0, "LinearAlloc exceeded capacity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    return v1

    .line 20
    :cond_1
    const-string v0, "Thread Name: \'GCDaemon\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    return v1

    .line 24
    :cond_2
    const-string v0, "/system/lib/libhwui.so (_ZN7android10uirenderer12renderthread12RenderThread10threadLoopEv)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    const-string v0, "Thread Name: \'RenderThread\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 29
    :cond_3
    const-string v0, "com.alipay.mobile.common.logging.d.run(LogContextImpl.java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    const-string v0, "Thread Name: \'LogAppendWorker\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    return v1

    .line 34
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_5
    :goto_0
    return v1
.end method
