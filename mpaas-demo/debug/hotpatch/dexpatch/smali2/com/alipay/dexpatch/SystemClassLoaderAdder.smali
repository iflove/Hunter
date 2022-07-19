.class public Lcom/alipay/dexpatch/SystemClassLoaderAdder;
.super Ljava/lang/Object;
.source "SystemClassLoaderAdder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/dexpatch/SystemClassLoaderAdder$V4;,
        Lcom/alipay/dexpatch/SystemClassLoaderAdder$V14;,
        Lcom/alipay/dexpatch/SystemClassLoaderAdder$V19;,
        Lcom/alipay/dexpatch/SystemClassLoaderAdder$V23;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 18
    sget-object v3, Lcom/alipay/dexpatch/util/DPConstants;->CLASS_N_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/alipay/dexpatch/SystemClassLoaderAdder$1;

    invoke-direct {v1, p0}, Lcom/alipay/dexpatch/SystemClassLoaderAdder$1;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static installDexes(Landroid/app/Application;Ldalvik/system/PathClassLoader;Ljava/io/File;Ljava/util/List;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ldalvik/system/PathClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installDexes: dexOptDir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dex size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexP.ClassLoaderAdder"

    invoke-static {v2, v0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5
    invoke-static {p3}, Lcom/alipay/dexpatch/SystemClassLoaderAdder;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 7
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt p4, v4, :cond_1

    if-eqz p5, :cond_0

    .line 8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-ne p4, v0, :cond_0

    .line 9
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object p4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/io/File;

    invoke-static {p1, p0, p4, p5, p2}, Lcom/alipay/dexpatch/PNClassLoader;->inject(Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;Ljava/io/File;Ljava/io/File;)Ldalvik/system/PathClassLoader;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object p4

    invoke-static {p1, p0, p4}, Lcom/alipay/dexpatch/NClassLoader;->inject(Ldalvik/system/PathClassLoader;Landroid/app/Application;Lcom/alipay/dexpatch/DexPatchContext;)Lcom/alipay/dexpatch/NClassLoader;

    move-result-object p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 19
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x17

    if-lt p0, p4, :cond_2

    .line 20
    # invokes: Lcom/alipay/dexpatch/SystemClassLoaderAdder$V23;->a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    invoke-static {p1, p3, p2}, Lcom/alipay/dexpatch/SystemClassLoaderAdder$V23;->access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_1

    :cond_2
    const/16 p4, 0x13

    if-lt p0, p4, :cond_3

    .line 22
    # invokes: Lcom/alipay/dexpatch/SystemClassLoaderAdder$V19;->a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    invoke-static {p1, p3, p2}, Lcom/alipay/dexpatch/SystemClassLoaderAdder$V19;->access$100(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_1

    :cond_3
    const/16 p4, 0xe

    if-lt p0, p4, :cond_4

    .line 24
    # invokes: Lcom/alipay/dexpatch/SystemClassLoaderAdder$V14;->a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    invoke-static {p1, p3, p2}, Lcom/alipay/dexpatch/SystemClassLoaderAdder$V14;->access$200(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_1

    .line 26
    :cond_4
    # invokes: Lcom/alipay/dexpatch/SystemClassLoaderAdder$V4;->a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    invoke-static {p1, p3, p2}, Lcom/alipay/dexpatch/SystemClassLoaderAdder$V4;->access$300(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 30
    :cond_5
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "installDexes: after loaded classloader: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_6
    return-void
.end method
