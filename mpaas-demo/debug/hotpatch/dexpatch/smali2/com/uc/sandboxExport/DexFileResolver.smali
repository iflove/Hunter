.class public Lcom/uc/sandboxExport/DexFileResolver;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/uc/sandboxExport/Switches;->a:Z

    sput-boolean v0, Lcom/uc/sandboxExport/DexFileResolver;->a:Z

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/sandboxExport/DexFileResolver;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoadDextime()J
    .locals 2

    .line 50
    invoke-static {}, Lcom/uc/sandboxExport/DexFileResolver;->nativeGetLoadDexTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadDexByFdOnL(I)J
    .locals 2

    .line 28
    invoke-static {}, Lcom/uc/sandboxExport/DexFileResolver;->loadloaderLibray()V

    .line 30
    nop

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 32
    invoke-static {p0}, Lcom/uc/sandboxExport/DexFileResolver;->nativeLoadDexByFdOnL(I)J

    move-result-wide v0

    goto :goto_0

    .line 31
    :cond_0
    const-wide/16 v0, 0x0

    .line 36
    :goto_0
    return-wide v0
.end method

.method public static loadDexByFdOnLAbove(I)Ljava/lang/Object;
    .locals 2

    .line 40
    invoke-static {}, Lcom/uc/sandboxExport/DexFileResolver;->loadloaderLibray()V

    .line 42
    invoke-static {p0}, Lcom/uc/sandboxExport/DexFileResolver;->nativeLoadDexByFdOnLAbove(I)Ljava/lang/Object;

    move-result-object p0

    .line 45
    sget-boolean v0, Lcom/uc/sandboxExport/DexFileResolver;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCookie: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    return-object p0
.end method

.method public static loadloaderLibray()V
    .locals 1

    .line 19
    sget-boolean v0, Lcom/uc/sandboxExport/DexFileResolver;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    if-nez v0, :cond_1

    .line 22
    const-string v0, "servicedexloader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/sandboxExport/DexFileResolver;->b:Z

    .line 25
    :cond_1
    return-void
.end method

.method private static native nativeGetLoadDexTime()J
.end method

.method private static native nativeLoadDexByFdOnL(I)J
.end method

.method private static native nativeLoadDexByFdOnLAbove(I)Ljava/lang/Object;
.end method

.method private static native nativeSetNeedVerifyRawDex(Z)V
.end method

.method public static setNeedVerifyRawDex(Z)V
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/uc/sandboxExport/DexFileResolver;->nativeSetNeedVerifyRawDex(Z)V

    .line 55
    return-void
.end method
