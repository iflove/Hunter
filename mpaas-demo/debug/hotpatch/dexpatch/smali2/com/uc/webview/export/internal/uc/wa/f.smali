.class final Lcom/uc/webview/export/internal/uc/wa/f;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field static a:Z

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uc/webview/export/internal/uc/wa/f;->b:[C

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/uc/wa/f;->a:Z

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 55
    const-string v0, ""

    const-string v1, "SDKWaStat"

    .line 58
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 59
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 60
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 61
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 63
    nop

    .line 1074
    nop

    .line 1075
    array-length v2, p0

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1077
    const/4 v4, 0x0

    add-int/2addr v2, v4

    .line 1078
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1079
    aget-byte v5, p0, v4

    .line 1086
    sget-object v6, Lcom/uc/webview/export/internal/uc/wa/f;->b:[C

    and-int/lit16 v7, v5, 0xf0

    shr-int/lit8 v7, v7, 0x4

    aget-char v7, v6, v7

    .line 1087
    and-int/lit8 v5, v5, 0xf

    aget-char v5, v6, v5

    .line 1088
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1080
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1082
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 68
    goto :goto_2

    .line 66
    :catch_0
    move-exception p0

    .line 67
    invoke-static {v1, v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 64
    :catch_1
    move-exception p0

    .line 65
    invoke-static {v1, v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    nop

    .line 70
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method static a()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/uc/webview/export/internal/uc/wa/f;->a:Z

    return v0
.end method

.method static a([B)[B
    .locals 9

    .line 104
    const-class v0, [B

    const-string v1, "encryptData"

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    const-string v3, "org.chromium.android_webview.AwContentsStatics"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 109
    const/4 v3, 0x1

    :try_start_0
    new-array v5, v3, [Ljava/lang/Class;

    aput-object v0, v5, v4

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v5

    .line 111
    new-array v5, v3, [Ljava/lang/Class;

    aput-object v0, v5, v4

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    :goto_0
    const/4 v1, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1124
    array-length v5, p0

    const/16 v6, 0x10

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 1125
    array-length v7, p0

    .line 1134
    shr-int/lit8 v8, v7, 0x0

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v4

    .line 1135
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    .line 1136
    const/4 v3, 0x2

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    .line 1137
    const/4 v3, 0x3

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 1126
    const/4 v3, 0x4

    :goto_1
    if-ge v3, v6, :cond_0

    .line 1127
    aput-byte v4, v5, v3

    .line 1126
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1129
    :cond_0
    array-length v3, p0

    invoke-static {p0, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    nop

    .line 113
    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static b([B)[B
    .locals 3

    .line 141
    nop

    .line 143
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 146
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 147
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 148
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 149
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 151
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :goto_0
    return-object v0
.end method
