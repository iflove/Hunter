.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/ApiLevelChanged;
.super Ljava/lang/Object;
.source "ApiLevelChanged.java"


# static fields
.field public static final KEY_API_LEVEL:Ljava/lang/String; = "Build.VERSION.SDK_INT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;)Z
    .locals 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .local v0, "curApiLevel":I
    const-string v1, "Build.VERSION.SDK_INT"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 57
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "preApiLevel":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3

    .line 60
    .end local v1    # "preApiLevel":I
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return v3
.end method

.method public static processApiLevelChanged(Landroid/content/Context;Lcom/alipay/euler/andfix/patch/PatchManager;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchManager"    # Lcom/alipay/euler/andfix/patch/PatchManager;

    .line 28
    const-string v0, "DynamicRelease"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 29
    .local v4, "sp":Landroid/content/SharedPreferences;
    move-object v4, v2

    invoke-static {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/ApiLevelChanged;->a(Landroid/content/SharedPreferences;)Z

    move-result v2

    .line 30
    .local v2, "apiLevelChanged":Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "apiLevelChanged="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    const-string v6, ", goto clear hotpatch things."

    goto :goto_0

    :cond_0
    const-string v6, "."

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    if-eqz v2, :cond_2

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    const-string v6, "0"

    invoke-interface {v5, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchVersion(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchDesc(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    const-string v6, "-"

    invoke-interface {v5, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->setHotpatchBundleVersion(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v1}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 38
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alipay/instantrun/compat/AInstantRunManager;->cleanPatches(Z)V

    .line 39
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "hotpach.cache"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v3, "store":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clearHotpatchState() : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 49
    :cond_1
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/HotpatchProcessor;->clearHotpatchState(Landroid/content/Context;)V

    .line 51
    .end local v3    # "store":Ljava/io/File;
    :cond_2
    return v2
.end method
