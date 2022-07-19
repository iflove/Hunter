.class public Lcom/uc/webview/export/cyclone/UCDex;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDexClassLoader(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;
    .locals 7

    .line 17
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCDex;->getUCDex()Lcom/uc/webview/export/cyclone/service/UCDex;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/uc/webview/export/cyclone/service/UCDex;->createDexClassLoader(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public static createDexFile(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 6

    .line 22
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCDex;->getUCDex()Lcom/uc/webview/export/cyclone/service/UCDex;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/uc/webview/export/cyclone/service/UCDex;->createDexFile(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object p0

    return-object p0
.end method

.method private static getUCDex()Lcom/uc/webview/export/cyclone/service/UCDex;
    .locals 3

    .line 27
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCDex;

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCService;->initImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/cyclone/service/UCDex;

    .line 28
    if-eqz v0, :cond_0

    .line 29
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x7e3

    const-string v2, "The implement of UCDex service is not registered."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCDex;->getUCDex()Lcom/uc/webview/export/cyclone/service/UCDex;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/webview/export/cyclone/service/UCDex;->run()V

    .line 38
    return-void
.end method
