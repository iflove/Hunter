.class public final Lkotlinx/coroutines/internal/FastServiceLoader;
.super Ljava/lang/Object;
.source "FastServiceLoader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,99:1\n69#1,13:116\n72#1,3:129\n1218#2,12:100\n1313#2:112\n1382#2,3:113\n923#3,2:132\n*E\n*S KotlinDebug\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n*L\n55#1,13:116\n55#1,3:129\n37#1,12:100\n39#1:112\n39#1,3:113\n91#1,2:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000bH\u0002\u00a2\u0006\u0002\u0010\u000cJ/\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000e\"\u0004\u0008\u0000\u0010\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000b2\u0006\u0010\u0008\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u000fJ/\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000e\"\u0004\u0008\u0000\u0010\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u000b2\u0006\u0010\u0008\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u0011J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J,\u0010\u0018\u001a\u0002H\u0019\"\u0004\u0008\u0000\u0010\u0019*\u00020\u001a2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u0002H\u00190\u001cH\u0082\u0008\u00a2\u0006\u0002\u0010\u001dR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/FastServiceLoader;",
        "",
        "()V",
        "PREFIX",
        "",
        "getProviderInstance",
        "S",
        "name",
        "loader",
        "Ljava/lang/ClassLoader;",
        "service",
        "Ljava/lang/Class;",
        "(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;",
        "load",
        "",
        "load$kotlinx_coroutines_core",
        "loadProviders",
        "loadProviders$kotlinx_coroutines_core",
        "parse",
        "url",
        "Ljava/net/URL;",
        "parseFile",
        "r",
        "Ljava/io/BufferedReader;",
        "use",
        "R",
        "Ljava/util/jar/JarFile;",
        "block",
        "Lkotlin/Function1;",
        "(Ljava/util/jar/JarFile;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

.field private static final PREFIX:Ljava/lang/String; = "META-INF/services/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/FastServiceLoader;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getProviderInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "service"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .local v0, "$i$a$-require-FastServiceLoader$getProviderInstance$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected service of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-FastServiceLoader$getProviderInstance$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method private final parse(Ljava/net/URL;)Ljava/util/List;
    .locals 14
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .local v0, "path":Ljava/lang/String;
    const-string v1, "jar"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "jar:file:"

    invoke-static {v0, v1, v4, v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x21

    invoke-static {v1, v5, v4, v3, v4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "pathToJar":Ljava/lang/String;
    const-string v5, "!/"

    invoke-static {v0, v5, v4, v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "entry":Ljava/lang/String;
    new-instance v5, Ljava/util/jar/JarFile;

    invoke-direct {v5, v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    move-object v2, p0

    .local v2, "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .local v5, "$this$use$iv":Ljava/util/jar/JarFile;
    const/4 v6, 0x0

    .line 116
    .local v6, "$i$f$use":I
    move-object v7, v4

    check-cast v7, Ljava/lang/Throwable;

    .line 117
    .local v7, "cause$iv":Ljava/lang/Throwable;
    nop

    .line 118
    move-object v8, v5

    .local v8, "file":Ljava/util/jar/JarFile;
    const/4 v9, 0x0

    .line 56
    .local v9, "$i$a$-use-FastServiceLoader$parse$1":I
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-direct {v12, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    check-cast v11, Ljava/io/Reader;

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    check-cast v10, Ljava/io/Closeable;

    check-cast v4, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    move-object v11, v10

    check-cast v11, Ljava/io/BufferedReader;

    .local v11, "r":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 57
    .local v12, "$i$a$-use-FastServiceLoader$parse$1$1":I
    sget-object v13, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-direct {v13, v11}, Lkotlinx/coroutines/internal/FastServiceLoader;->parseFile(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v11    # "r":Ljava/io/BufferedReader;
    .end local v12    # "$i$a$-use-FastServiceLoader$parse$1$1":I
    :try_start_2
    invoke-static {v10, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 123
    .end local v2    # "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .end local v5    # "$this$use$iv":Ljava/util/jar/JarFile;
    .end local v6    # "$i$f$use":I
    .end local v7    # "cause$iv":Ljava/lang/Throwable;
    .end local v8    # "file":Ljava/util/jar/JarFile;
    .end local v9    # "$i$a$-use-FastServiceLoader$parse$1":I
    nop

    .line 124
    :try_start_3
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    return-object v13

    .line 125
    :catchall_0
    move-exception v2

    .line 126
    throw v2

    .line 128
    .restart local v2    # "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .restart local v5    # "$this$use$iv":Ljava/util/jar/JarFile;
    .restart local v6    # "$i$f$use":I
    .restart local v7    # "cause$iv":Ljava/lang/Throwable;
    .restart local v8    # "file":Ljava/util/jar/JarFile;
    .restart local v9    # "$i$a$-use-FastServiceLoader$parse$1":I
    :catchall_1
    move-exception v4

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "pathToJar":Ljava/lang/String;
    .end local v2    # "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .end local v3    # "entry":Ljava/lang/String;
    .end local v5    # "$this$use$iv":Ljava/util/jar/JarFile;
    .end local v6    # "$i$f$use":I
    .end local v7    # "cause$iv":Ljava/lang/Throwable;
    .end local v8    # "file":Ljava/util/jar/JarFile;
    .end local v9    # "$i$a$-use-FastServiceLoader$parse$1":I
    .end local p1    # "url":Ljava/net/URL;
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "pathToJar":Ljava/lang/String;
    .restart local v2    # "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v5    # "$this$use$iv":Ljava/util/jar/JarFile;
    .restart local v6    # "$i$f$use":I
    .restart local v7    # "cause$iv":Ljava/lang/Throwable;
    .restart local v8    # "file":Ljava/util/jar/JarFile;
    .restart local v9    # "$i$a$-use-FastServiceLoader$parse$1":I
    .restart local p1    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v11

    :try_start_5
    invoke-static {v10, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "pathToJar":Ljava/lang/String;
    .end local v2    # "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .end local v3    # "entry":Ljava/lang/String;
    .end local v5    # "$this$use$iv":Ljava/util/jar/JarFile;
    .end local v6    # "$i$f$use":I
    .end local v7    # "cause$iv":Ljava/lang/Throwable;
    .end local p1    # "url":Ljava/net/URL;
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 129
    .end local v8    # "file":Ljava/util/jar/JarFile;
    .end local v9    # "$i$a$-use-FastServiceLoader$parse$1":I
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "pathToJar":Ljava/lang/String;
    .restart local v2    # "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v5    # "$this$use$iv":Ljava/util/jar/JarFile;
    .restart local v6    # "$i$f$use":I
    .restart local v7    # "cause$iv":Ljava/lang/Throwable;
    .restart local p1    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v4

    .line 130
    .local v4, "e$iv":Ljava/lang/Throwable;
    move-object v7, v4

    .line 131
    nop

    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "pathToJar":Ljava/lang/String;
    .end local v2    # "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .end local v3    # "entry":Ljava/lang/String;
    .end local v5    # "$this$use$iv":Ljava/util/jar/JarFile;
    .end local v6    # "$i$f$use":I
    .end local v7    # "cause$iv":Ljava/lang/Throwable;
    .end local p1    # "url":Ljava/net/URL;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .end local v4    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "pathToJar":Ljava/lang/String;
    .restart local v2    # "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v5    # "$this$use$iv":Ljava/util/jar/JarFile;
    .restart local v6    # "$i$f$use":I
    .restart local v7    # "cause$iv":Ljava/lang/Throwable;
    .restart local p1    # "url":Ljava/net/URL;
    :catchall_4
    move-exception v4

    .line 123
    nop

    .line 124
    :try_start_7
    invoke-virtual {v5}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 128
    throw v4

    .line 125
    :catchall_5
    move-exception v4

    .line 126
    .local v4, "closeException$iv":Ljava/lang/Throwable;
    nop

    .line 127
    invoke-static {v7, v4}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 128
    throw v7

    .line 62
    .end local v1    # "pathToJar":Ljava/lang/String;
    .end local v2    # "this_$iv":Lkotlinx/coroutines/internal/FastServiceLoader;
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "closeException$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$use$iv":Ljava/util/jar/JarFile;
    .end local v6    # "$i$f$use":I
    .end local v7    # "cause$iv":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/Reader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    check-cast v1, Ljava/io/Closeable;

    check-cast v4, Ljava/lang/Throwable;

    :try_start_8
    move-object v2, v1

    check-cast v2, Ljava/io/BufferedReader;

    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 63
    .local v3, "$i$a$-use-FastServiceLoader$parse$2":I
    sget-object v5, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/internal/FastServiceLoader;->parseFile(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 62
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "$i$a$-use-FastServiceLoader$parse$2":I
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    :catchall_6
    move-exception v2

    .end local v0    # "path":Ljava/lang/String;
    .end local p1    # "url":Ljava/net/URL;
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .restart local v0    # "path":Ljava/lang/String;
    .restart local p1    # "url":Ljava/net/URL;
    :catchall_7
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final parseFile(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 12
    .param p1, "r"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 88
    .local v0, "names":Ljava/util/Set;
    :goto_0
    nop

    .line 89
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 90
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x2

    const-string v3, "#"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "serviceName":Ljava/lang/String;
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "$this$all$iv":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 132
    .local v4, "$i$f$all":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_3

    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .local v7, "element$iv":C
    move v9, v7

    .local v9, "it":C
    const/4 v10, 0x0

    .line 91
    .local v10, "$i$a$-all-FastServiceLoader$parseFile$1":I
    const/16 v11, 0x2e

    if-eq v9, v11, :cond_1

    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v9, 0x1

    .end local v9    # "it":C
    .end local v10    # "$i$a$-all-FastServiceLoader$parseFile$1":I
    :goto_3
    if-nez v9, :cond_2

    const/4 v3, 0x0

    goto :goto_4

    .end local v7    # "element$iv":C
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 133
    :cond_3
    const/4 v3, 0x1

    .line 91
    .end local v3    # "$this$all$iv":Ljava/lang/CharSequence;
    .end local v4    # "$i$f$all":I
    :goto_4
    if-eqz v3, :cond_6

    .line 92
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_5

    .line 93
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "serviceName":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 91
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "serviceName":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .local v3, "$i$a$-require-FastServiceLoader$parseFile$2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal service provider class name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-FastServiceLoader$parseFile$2":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 90
    .end local v2    # "serviceName":Ljava/lang/String;
    :cond_7
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v1    # "line":Ljava/lang/String;
    :cond_8
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private final use(Ljava/util/jar/JarFile;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p1, "$this$use"    # Ljava/util/jar/JarFile;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/jar/JarFile;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/jar/JarFile;",
            "+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    .local v0, "$i$f$use":I
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    .line 70
    .local v1, "cause":Ljava/lang/Throwable;
    nop

    .line 71
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 76
    nop

    .line 77
    :try_start_1
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object v3

    .line 78
    :catchall_0
    move-exception v2

    .line 79
    .local v2, "closeException":Ljava/lang/Throwable;
    throw v2

    .line 72
    .end local v2    # "closeException":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Throwable;
    move-object v1, v3

    .line 74
    nop

    .end local v0    # "$i$f$use":I
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local p1    # "$this$use":Ljava/util/jar/JarFile;
    .end local p2    # "block":Lkotlin/jvm/functions/Function1;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v0    # "$i$f$use":I
    .restart local v1    # "cause":Ljava/lang/Throwable;
    .restart local p1    # "$this$use":Ljava/util/jar/JarFile;
    .restart local p2    # "block":Lkotlin/jvm/functions/Function1;
    :catchall_2
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 76
    nop

    .line 77
    :try_start_3
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 82
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3

    .line 78
    :catchall_3
    move-exception v2

    .line 79
    .restart local v2    # "closeException":Ljava/lang/Throwable;
    nop

    .line 80
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 81
    throw v1
.end method


# virtual methods
.method public final load$kotlinx_coroutines_core(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 3
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    nop

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/FastServiceLoader;->loadProviders$kotlinx_coroutines_core(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {p1, p2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    const-string v2, "ServiceLoader.load(service, loader)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 24
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public final loadProviders$kotlinx_coroutines_core(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 13
    .param p1, "service"    # Ljava/lang/Class;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "META-INF/services/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "fullServiceName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 37
    .local v1, "urls":Ljava/util/Enumeration;
    const-string v2, "urls"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "java.util.Collections.list(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 100
    .local v3, "$i$f$flatMap":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 107
    .local v6, "$i$f$flatMapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 108
    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/net/URL;

    .local v9, "it":Ljava/net/URL;
    const/4 v10, 0x0

    .line 37
    .local v10, "$i$a$-flatMap-FastServiceLoader$loadProviders$providers$1":I
    sget-object v11, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    const-string v12, "it"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v9}, Lkotlinx/coroutines/internal/FastServiceLoader;->parse(Ljava/net/URL;)Ljava/util/List;

    move-result-object v9

    .end local v9    # "it":Ljava/net/URL;
    .end local v10    # "$i$a$-flatMap-FastServiceLoader$loadProviders$providers$1":I
    check-cast v9, Ljava/lang/Iterable;

    .line 109
    .local v9, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 107
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "list$iv$iv":Ljava/lang/Iterable;
    goto :goto_0

    .line 111
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$flatMapTo":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .end local v2    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$flatMap":I
    check-cast v2, Ljava/lang/Iterable;

    .line 37
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 38
    .local v2, "providers":Ljava/util/Set;
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 39
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 112
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 113
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 114
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 39
    .local v11, "$i$a$-map-FastServiceLoader$loadProviders$2":I
    sget-object v12, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-direct {v12, v10, p2, p1}, Lkotlinx/coroutines/internal/FastServiceLoader;->getProviderInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-map-FastServiceLoader$loadProviders$2":I
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 115
    :cond_1
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    move-object v3, v5

    check-cast v3, Ljava/util/List;

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    return-object v3

    .line 38
    :cond_2
    const/4 v3, 0x0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No providers were loaded with FastServiceLoader"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method
