.class public Lcom/alipay/euler/andfix/a;
.super Ljava/lang/Object;
.source "AndFixManager.java"


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/alipay/euler/andfix/c/a;

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/euler/andfix/a;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/euler/andfix/a;->c:Z

    .line 79
    iput-object p1, p0, Lcom/alipay/euler/andfix/a;->a:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/euler/andfix/a;->c:Z

    .line 81
    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Lcom/alipay/euler/andfix/c/a;

    invoke-direct {v1, p1, p2}, Lcom/alipay/euler/andfix/c/a;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/alipay/euler/andfix/a;->d:Lcom/alipay/euler/andfix/c/a;

    .line 83
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "apatch_opt"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alipay/euler/andfix/a;->e:Ljava/io/File;

    .line 84
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alipay/euler/andfix/a;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iput-boolean v0, p0, Lcom/alipay/euler/andfix/a;->c:Z

    .line 86
    const-string p1, "AndFixManager"

    const-string/jumbo p2, "opt dir create error."

    invoke-static {p1, p2}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/alipay/euler/andfix/a;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/alipay/euler/andfix/a;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 89
    iput-boolean v0, p0, Lcom/alipay/euler/andfix/a;->c:Z

    .line 92
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 564
    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 567
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 568
    if-eqz v1, :cond_d

    .line 570
    array-length v0, v1

    if-nez v0, :cond_1

    .line 571
    const-string v0, "[]"

    goto/16 :goto_2

    .line 573
    :cond_1
    nop

    .line 574
    array-length v0, v1

    const/4 v2, 0x0

    const-string v3, "["

    move-object v5, v3

    const/4 v4, 0x0

    :goto_0
    const-string/jumbo v6, "|"

    if-ge v4, v0, :cond_b

    aget-object v7, v1, v4

    .line 575
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 576
    const-string v8, "boolean"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Z"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 578
    :cond_2
    const-string v8, "char"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "C"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 580
    :cond_3
    const-string v8, "float"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 581
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "F"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 582
    :cond_4
    const-string v8, "int"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 583
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "I"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 584
    :cond_5
    const-string v8, "long"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 585
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "J"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 586
    :cond_6
    const-string/jumbo v8, "short"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 587
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "S"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 588
    :cond_7
    const-string v8, "double"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 589
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "D"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 590
    :cond_8
    const-string v8, "byte"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 591
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "B"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 593
    :cond_9
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 594
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "L"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 596
    :cond_a
    const-string v8, "\\."

    const-string v9, "/"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 597
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 599
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 574
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 601
    :cond_b
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 602
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 604
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 608
    :cond_d
    return-object v0

    .line 565
    :cond_e
    :goto_3
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    const-class v0, Lcom/alipay/euler/andfix/a;

    monitor-enter v0

    .line 101
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "apatch_opt"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    const-string p1, "AndFixManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " delete error."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit v0

    return-void

    .line 100
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "assertCanFixClass:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndFixManager"

    invoke-static {v1, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 246
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 247
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 248
    const-class v6, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    .line 249
    if-eqz v6, :cond_0

    .line 251
    invoke-static {v5}, Lcom/alipay/euler/andfix/patch/b;->a(Ljava/lang/reflect/Method;)V

    .line 247
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_3

    .line 257
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 258
    const-class v5, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    .line 259
    if-eqz v5, :cond_2

    .line 261
    invoke-static {v4}, Lcom/alipay/euler/andfix/patch/b;->a(Ljava/lang/reflect/Constructor;)V

    .line 257
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "assertCanFixClass passed:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private static a(ZLjava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fixClass:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndFixManager"

    invoke-static {v1, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 279
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 280
    const-class v5, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    .line 281
    if-eqz v5, :cond_0

    .line 283
    invoke-interface {v5}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->clazz()Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-interface {v5}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->method()Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-static {v6}, Lcom/alipay/euler/andfix/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Lcom/alipay/euler/andfix/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 286
    invoke-static {p0, p2, v6, v5, v4}, Lcom/alipay/euler/andfix/a;->a(ZLjava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 279
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 291
    if-eqz p1, :cond_3

    .line 292
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v1, p1, v2

    .line 293
    const-class v3, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    .line 294
    if-eqz v3, :cond_2

    .line 296
    invoke-interface {v3}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->clazz()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-interface {v3}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->method()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {v4}, Lcom/alipay/euler/andfix/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lcom/alipay/euler/andfix/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 299
    invoke-static {p0, p2, v4, v1}, Lcom/alipay/euler/andfix/a;->a(ZLjava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    .line 292
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 303
    :cond_3
    return-void
.end method

.method private static a(ZLjava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 316
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    sget-object v1, Lcom/alipay/euler/andfix/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 318
    if-nez v1, :cond_0

    .line 319
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 321
    invoke-static {p1}, Lcom/alipay/euler/andfix/AndFix;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 323
    :cond_0
    if-eqz v1, :cond_1

    .line 324
    sget-object p1, Lcom/alipay/euler/andfix/a;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    nop

    .line 326
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 325
    invoke-virtual {v1, p3, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 327
    invoke-static {p0, p1, p4}, Lcom/alipay/euler/andfix/AndFix;->a(ZLjava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_1
    return-void

    .line 329
    :catchall_0
    move-exception p0

    .line 330
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    const-string/jumbo p2, "replaceMethod failed"

    invoke-direct {p1, p2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(ZLjava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 345
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    sget-object v1, Lcom/alipay/euler/andfix/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 347
    if-nez v1, :cond_0

    .line 348
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 350
    invoke-static {p1}, Lcom/alipay/euler/andfix/AndFix;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 352
    :cond_0
    if-eqz v1, :cond_1

    .line 353
    sget-object p1, Lcom/alipay/euler/andfix/a;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    nop

    .line 355
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 354
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 356
    invoke-static {p0, p1, p3}, Lcom/alipay/euler/andfix/AndFix;->a(ZLjava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_1
    return-void

    .line 358
    :catchall_0
    move-exception p0

    .line 359
    new-instance p1, Lcom/alipay/euler/andfix/a/a;

    const-string/jumbo p2, "replaceMethod failed"

    invoke-direct {p1, p2, p0}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 0

    .line 364
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/Class;)V
    .locals 1

    .line 501
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 502
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->a(Ljava/lang/Class;)V

    .line 504
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/DexFile;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 433
    :try_start_0
    new-instance v0, Lcom/alipay/euler/andfix/a$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/euler/andfix/a$2;-><init>(Lcom/alipay/euler/andfix/a;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V

    .line 444
    invoke-virtual {p1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 445
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 446
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 447
    if-eqz p3, :cond_1

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    :cond_1
    const-string v1, "AndFixManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preLoadAddedClass:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 452
    const/4 v1, 0x1

    :try_start_1
    invoke-static {p2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    goto :goto_0

    .line 453
    :catchall_0
    move-exception p1

    .line 454
    :try_start_2
    new-instance p2, Lcom/alipay/euler/andfix/a/a;

    const-string/jumbo p3, "preLoadAddClasses : init patch class failed"

    invoke-direct {p2, p3, p1}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 457
    :cond_2
    monitor-exit p0

    return-void

    .line 432
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/io/File;)V
    .locals 5

    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/euler/andfix/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 116
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/euler/andfix/a;->d:Lcom/alipay/euler/andfix/c/a;

    invoke-virtual {v0, p1}, Lcom/alipay/euler/andfix/c/a;->c(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const-string p1, "AndFixManager"

    const-string v0, "AndFixManager.preDexOptForPatchFile() verifyApk: failed, return."

    invoke-static {p1, v0}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/a;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/alipay/euler/andfix/a;->d:Lcom/alipay/euler/andfix/c/a;

    invoke-virtual {v1, v0}, Lcom/alipay/euler/andfix/c/a;->a(Ljava/io/File;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_2
    :try_start_3
    const-string v1, "AndFixManager"

    const-string v2, "AndFixManager.preDexOptForPatchFile() verifyOpt: failed, try to delete opt file."

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    const-string v0, "AndFixManager"

    const-string v1, "AndFixManager.preDexOptForPatchFile() verifyOpt: failed to delete opt file. return."

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 142
    :cond_3
    :try_start_4
    invoke-static {p1}, Lcom/alipay/euler/andfix/patch/c;->a(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/a;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/a;->e()Z

    move-result v1

    .line 144
    if-eqz v1, :cond_4

    .line 145
    invoke-static {}, Lcom/alipay/euler/andfix/d/b;->a()V

    .line 147
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 147
    invoke-static {v2, v3, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 149
    if-eqz v1, :cond_5

    .line 150
    invoke-static {}, Lcom/alipay/euler/andfix/d/b;->b()V

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/alipay/euler/andfix/a;->d:Lcom/alipay/euler/andfix/c/a;

    invoke-virtual {v1, v0}, Lcom/alipay/euler/andfix/c/a;->b(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    :try_start_5
    const-string v1, "AndFixManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to preDexOptForPatchFile (file="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 156
    monitor-exit p0

    return-void

    .line 114
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 460
    if-nez p1, :cond_0

    .line 461
    return-void

    .line 463
    :cond_0
    const-string v0, "AndFixManager"

    const-string/jumbo v1, "prepareClass"

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    goto :goto_0

    .line 470
    :catchall_0
    move-exception p1

    .line 472
    new-instance p2, Lcom/alipay/euler/andfix/a/a;

    const-string/jumbo v0, "prepareClass exception"

    invoke-direct {p2, v0, p1}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 475
    :cond_2
    return-void
.end method

.method public declared-synchronized a(ZZLdalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ldalvik/system/DexFile;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/euler/andfix/a;->c:Z

    if-nez v0, :cond_0

    .line 169
    const-string p1, "AndFixManager"

    const-string p2, "AndFixManager.fix() mSupport: false, return."

    invoke-static {p1, p2}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/euler/andfix/a$1;

    invoke-direct {v0, p0, p4, p3}, Lcom/alipay/euler/andfix/a$1;-><init>(Lcom/alipay/euler/andfix/a;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V

    .line 194
    invoke-virtual {p3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 196
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    if-eqz p5, :cond_2

    invoke-interface {p5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 202
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    goto :goto_0

    .line 203
    :catchall_0
    move-exception p1

    .line 205
    :try_start_3
    new-instance p2, Lcom/alipay/euler/andfix/a/a;

    const-string p3, "init patch class failed"

    invoke-direct {p2, p3, p1}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 211
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_7

    if-nez p2, :cond_7

    .line 212
    invoke-virtual {p3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object p2

    .line 214
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 215
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    if-eqz p5, :cond_5

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    :cond_5
    invoke-virtual {p3, v1, v0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_6

    .line 221
    invoke-static {v1}, Lcom/alipay/euler/andfix/a;->a(Ljava/lang/Class;)V

    .line 223
    :cond_6
    goto :goto_1

    .line 227
    :cond_7
    invoke-virtual {p3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object p2

    .line 229
    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 230
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    if-eqz p5, :cond_9

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 234
    :cond_9
    invoke-virtual {p3, v1, v0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_a

    .line 236
    invoke-static {p1, v1, p4}, Lcom/alipay/euler/andfix/a;->a(ZLjava/lang/Class;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 238
    :cond_a
    goto :goto_2

    .line 240
    :cond_b
    monitor-exit p0

    return-void

    .line 167
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/alipay/euler/andfix/patch/a;Ljava/lang/ClassLoader;)[Ldalvik/system/DexFile;
    .locals 7

    monitor-enter p0

    .line 368
    :try_start_0
    iget-boolean p2, p0, Lcom/alipay/euler/andfix/a;->c:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 369
    const-string p1, "AndFixManager"

    const-string p2, "AndFixManager.initPatchDex() mSupport:false, return."

    invoke-static {p1, p2}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-object v0

    .line 373
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/a;->b()Ljava/io/File;

    move-result-object p2

    .line 375
    iget-object v1, p0, Lcom/alipay/euler/andfix/a;->d:Lcom/alipay/euler/andfix/c/a;

    invoke-virtual {v1, p2}, Lcom/alipay/euler/andfix/c/a;->c(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    const-string p1, "AndFixManager"

    const-string p2, "AndFixManager.initPatchDex() verifyApk: failed, return."

    invoke-static {p1, p2}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    monitor-exit p0

    return-object v0

    .line 381
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/euler/andfix/a;->e:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    nop

    .line 383
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 389
    iget-object v2, p0, Lcom/alipay/euler/andfix/a;->d:Lcom/alipay/euler/andfix/c/a;

    invoke-virtual {v2, v1}, Lcom/alipay/euler/andfix/c/a;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    const/4 v2, 0x0

    goto :goto_0

    .line 392
    :cond_2
    const-string v2, "AndFixManager"

    const-string v5, "AndFixManager.initPatchDex() verifyOpt: failed, try to delete opt file."

    invoke-static {v2, v5}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 394
    const-string p1, "AndFixManager"

    const-string p2, "AndFixManager.initPatchDex() verifyOpt: failed to delete opt file. return."

    invoke-static {p1, p2}, Lcom/alipay/euler/andfix/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    monitor-exit p0

    return-object v0

    .line 400
    :cond_3
    const/4 v2, 0x1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/a;->e()Z

    move-result p1

    .line 401
    if-eqz p1, :cond_4

    .line 402
    invoke-static {}, Lcom/alipay/euler/andfix/d/b;->a()V

    .line 404
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-static {v5, v6, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v5

    .line 406
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 407
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-static {p2, v6, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object p2

    .line 408
    if-eqz p1, :cond_5

    .line 409
    invoke-static {}, Lcom/alipay/euler/andfix/d/b;->b()V

    .line 412
    :cond_5
    if-eqz v2, :cond_6

    .line 413
    iget-object p1, p0, Lcom/alipay/euler/andfix/a;->d:Lcom/alipay/euler/andfix/c/a;

    invoke-virtual {p1, v1}, Lcom/alipay/euler/andfix/c/a;->b(Ljava/io/File;)V

    .line 416
    :cond_6
    const/4 p1, 0x2

    new-array p1, p1, [Ldalvik/system/DexFile;

    .line 417
    aput-object v5, p1, v4

    .line 418
    aput-object p2, p1, v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 419
    monitor-exit p0

    return-object p1

    .line 420
    :catch_0
    move-exception p1

    .line 421
    :try_start_4
    const-string p2, "AndFixManager"

    const-string v1, "AndFixManager.initPatchDex() got ex"

    invoke-static {p2, v1, p1}, Lcom/alipay/euler/andfix/log/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 422
    monitor-exit p0

    return-object v0

    .line 367
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 478
    if-nez p1, :cond_0

    .line 479
    return-void

    .line 481
    :cond_0
    const-string v0, "AndFixManager"

    const-string/jumbo v1, "makeClassesPublic"

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 488
    if-eqz v1, :cond_2

    .line 489
    invoke-static {v1}, Lcom/alipay/euler/andfix/a;->b(Ljava/lang/Class;)V

    .line 490
    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->c(Ljava/lang/Class;)V

    goto :goto_0

    .line 492
    :cond_2
    new-instance p1, Ljava/lang/ClassNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can not be found!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :catchall_0
    move-exception p1

    .line 495
    new-instance p2, Lcom/alipay/euler/andfix/a/a;

    const-string/jumbo v0, "makeClassesPublic failed"

    invoke-direct {p2, v0, p1}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 498
    :cond_3
    return-void
.end method

.method public c(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 507
    if-nez p1, :cond_0

    .line 508
    return-void

    .line 510
    :cond_0
    const-string v0, "AndFixManager"

    const-string/jumbo v1, "makeMethodsPublic"

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 512
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 515
    const-string v2, "\\:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 516
    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    .line 519
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 520
    const/4 v3, 0x1

    aget-object v4, v2, v3

    const-string v5, "<init>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 522
    :try_start_0
    aget-object v1, v2, v5

    invoke-virtual {p2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 523
    invoke-static {v1}, Lcom/alipay/euler/andfix/a;->b(Ljava/lang/Class;)V

    .line 524
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 525
    nop

    :goto_1
    array-length v2, v1

    if-ge v5, v2, :cond_3

    .line 526
    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 527
    aget-object v2, v1, v5

    invoke-static {v2}, Lcom/alipay/euler/andfix/AndFix;->a(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 532
    :cond_3
    goto :goto_0

    .line 530
    :catchall_0
    move-exception p1

    .line 531
    new-instance p2, Lcom/alipay/euler/andfix/a/a;

    const-string/jumbo v0, "makeMethodsPublic.construtor failed"

    invoke-direct {p2, v0, p1}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 535
    :cond_4
    :try_start_1
    aget-object v4, v2, v5

    .line 536
    invoke-virtual {p2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 537
    invoke-static {v6}, Lcom/alipay/euler/andfix/a;->b(Ljava/lang/Class;)V

    .line 538
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 539
    nop

    :goto_2
    array-length v7, v6

    if-ge v5, v7, :cond_6

    .line 540
    aget-object v7, v2, v3

    aget-object v8, v6, v5

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 543
    aget-object v7, v6, v5

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    and-int/2addr v7, v3

    if-nez v7, :cond_5

    .line 544
    aget-object v7, v6, v5

    invoke-static {v7, v4}, Lcom/alipay/euler/andfix/a;->a(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 545
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "make "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    aget-object v1, v6, v5

    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->a(Ljava/lang/reflect/Method;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 548
    goto/16 :goto_0

    .line 539
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 556
    :cond_6
    goto/16 :goto_0

    .line 554
    :catchall_1
    move-exception p1

    .line 555
    new-instance p2, Lcom/alipay/euler/andfix/a/a;

    const-string/jumbo v0, "makeMethodsPublic.method failed"

    invoke-direct {p2, v0, p1}, Lcom/alipay/euler/andfix/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 559
    :cond_7
    return-void
.end method
