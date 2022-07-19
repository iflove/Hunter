.class public Lcom/alipay/instantrun/util/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.ReflectUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 p1, 0x0

    :try_start_0
    new-array p1, p1, [Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 72
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 73
    return-object p0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getConstructor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/instantrun/util/ClassUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 30
    if-eqz p1, :cond_1

    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Class;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    .line 31
    :goto_1
    if-eqz p1, :cond_2

    .line 32
    const/4 v2, 0x0

    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 33
    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/alipay/instantrun/util/ClassUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 36
    :cond_2
    invoke-static {p0, v1}, Lcom/alipay/instantrun/util/ReflectUtil;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    const-string p1, "IR.ReflectUtil"

    invoke-static {p1, p0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-object v0
.end method

.method public static getMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Member;
    .locals 1

    .line 19
    invoke-static {p1}, Lcom/alipay/instantrun/util/ReflectUtil;->isConstructor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0, p2}, Lcom/alipay/instantrun/util/ReflectUtil;->getConstructor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0

    .line 22
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alipay/instantrun/util/ReflectUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 80
    if-nez p2, :cond_0

    .line 81
    const/4 p2, 0x0

    :try_start_0
    new-array p2, p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 88
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    return-object p0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/instantrun/util/ClassUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 47
    if-eqz p2, :cond_1

    array-length v1, p2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/Class;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    .line 48
    :goto_1
    if-eqz p2, :cond_2

    .line 49
    const/4 v2, 0x0

    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 50
    aget-object v3, p2, v2

    invoke-static {v3}, Lcom/alipay/instantrun/util/ClassUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 53
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/alipay/instantrun/util/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    const-string p1, "IR.ReflectUtil"

    invoke-static {p1, p0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-object v0
.end method

.method private static isConstructor(Ljava/lang/String;)Z
    .locals 1

    .line 14
    const-string v0, "<init>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
