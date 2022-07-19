.class public Lcom/alipay/euler/andfix/b/a;
.super Ljava/lang/Object;
.source "MethodReplace5_0.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    :try_start_0
    const-string v0, "java.lang.reflect.AbstractMethod"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    const-string v1, "artMethod"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 22
    sput-object v0, Lcom/alipay/euler/andfix/b/a;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    const-string v0, "java.lang.reflect.ArtMethod"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "declaringClass"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/alipay/euler/andfix/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 27
    const-class v0, Ljava/lang/Class;

    const-string v2, "classLoader"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/alipay/euler/andfix/b/a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 29
    const-class v0, Ljava/lang/Class;

    const-string v2, "clinitThreadId"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/alipay/euler/andfix/b/a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    const-class v0, Ljava/lang/Class;

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/alipay/euler/andfix/b/a;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    const-string v1, "MethodReplace5_0"

    invoke-static {v1, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 50
    const-string/jumbo v0, "replaceReal failed"

    const-string v1, "MethodReplace5_0"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 53
    :try_start_0
    sget-object v3, Lcom/alipay/euler/andfix/b/a;->c:Ljava/lang/reflect/Field;

    sget-object v4, Lcom/alipay/euler/andfix/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/alipay/euler/andfix/b/a;->c:Ljava/lang/reflect/Field;

    sget-object v6, Lcom/alipay/euler/andfix/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    sget-object v3, Lcom/alipay/euler/andfix/b/a;->d:Ljava/lang/reflect/Field;

    sget-object v4, Lcom/alipay/euler/andfix/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/alipay/euler/andfix/b/a;->d:Ljava/lang/reflect/Field;

    sget-object v6, Lcom/alipay/euler/andfix/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    sget-object v3, Lcom/alipay/euler/andfix/b/a;->e:Ljava/lang/reflect/Field;

    sget-object v4, Lcom/alipay/euler/andfix/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/alipay/euler/andfix/b/a;->e:Ljava/lang/reflect/Field;

    sget-object v6, Lcom/alipay/euler/andfix/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 59
    nop

    .line 62
    :goto_0
    :try_start_1
    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v7, v3, v5

    .line 64
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_0

    .line 66
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "methodIndex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 67
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 75
    :cond_2
    nop

    .line 78
    :try_start_2
    sget-object p1, Lcom/alipay/euler/andfix/b/a;->e:Ljava/lang/reflect/Field;

    sget-object v2, Lcom/alipay/euler/andfix/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/alipay/euler/andfix/b/a;->e:Ljava/lang/reflect/Field;

    sget-object v4, Lcom/alipay/euler/andfix/b/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    invoke-static {v1, p0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {p1, v0, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    invoke-static {v1, p0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {p1, v0, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 56
    :catchall_2
    move-exception p0

    .line 57
    invoke-static {v1, p0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    invoke-direct {p1, v0, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 40
    :try_start_0
    sget-object v0, Lcom/alipay/euler/andfix/b/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/alipay/euler/andfix/b/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Lcom/alipay/euler/andfix/b/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    const-string p2, "MethodReplace5_0"

    invoke-static {p2, p1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    new-instance p2, Lcom/alipay/euler/andfix/a/a;

    const-string/jumbo v0, "replace failed"

    invoke-direct {p2, v0, p1}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
