.class public final Lcom/uc/webview/export/internal/setup/h;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, -0x1

    sput v0, Lcom/uc/webview/export/internal/setup/h;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;
    .locals 7

    .line 88
    new-instance v0, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v0}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    invoke-static {p2, p0}, Lcom/uc/webview/export/internal/utility/s;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 90
    :cond_0
    new-instance v5, Lcom/uc/webview/export/internal/utility/g$b;

    const-string p1, "cd_cvsv"

    invoke-direct {v5, p1}, Lcom/uc/webview/export/internal/utility/g$b;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v4, "com.UCMobile"

    move-object v1, p2

    move-object v2, p0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/utility/e$a;)Z

    move-result p1

    const/4 v1, 0x1

    const-string v2, "]"

    const-string v3, "FileVerifier"

    if-eqz p1, :cond_2

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "\u7ec4\u4ef6\u6821\u9a8c Dex Success ["

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p2, p0, v1}, Lcom/uc/webview/export/internal/utility/s;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 100
    :cond_1
    return-object v0

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u7ec4\u4ef6\u6821\u9a8c Dex Failed ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, Lcom/uc/webview/export/internal/utility/s;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 94
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v0, 0xbbd

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, p1

    const-string p1, "[%s] verify failed"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .line 38
    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 46
    const-string p0, "SHA1(default)"

    return-object p0

    .line 44
    :cond_0
    const-string p0, "SHA256"

    return-object p0

    .line 42
    :cond_1
    const-string p0, "SHA1"

    return-object p0

    .line 40
    :cond_2
    const-string p0, "MD5"

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 10

    .line 104
    if-eqz p0, :cond_6

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    array-length v0, p2

    if-lez v0, :cond_6

    if-nez p3, :cond_0

    goto :goto_5

    .line 109
    :cond_0
    const/16 v0, 0x25

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 111
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 113
    :goto_1
    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    .line 118
    :goto_3
    if-eqz v8, :cond_5

    .line 1164
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 118
    if-nez v0, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    .line 119
    :goto_4
    sget v0, Lcom/uc/webview/export/internal/setup/h;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ignoreQuickFlagFile : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 121
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v4 .. v9}, Lcom/uc/webview/export/internal/setup/h;->a(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    .line 122
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Landroid/content/Context;)V

    .line 123
    const/16 p0, 0xdd

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 124
    return-void

    .line 106
    :cond_6
    :goto_5
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;ZZ)V
    .locals 20

    .line 142
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "ms]"

    const-string v3, "] time["

    const-string v4, "\u7ec4\u4ef6\u6821\u9a8c("

    const-string v5, "FileVerifier"

    .line 143
    const/4 v6, 0x0

    aget-object v7, v0, v6

    array-length v7, v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-le v7, v8, :cond_0

    .line 144
    const/4 v7, 0x3

    goto :goto_0

    .line 143
    :cond_0
    const/4 v7, 0x2

    .line 146
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/high16 v11, 0x100000

    and-int/2addr v10, v11

    const/4 v11, 0x4

    if-eqz v10, :cond_1

    .line 147
    const/4 v7, 0x2

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/high16 v12, 0x400000

    and-int/2addr v10, v12

    if-eqz v10, :cond_2

    aget-object v10, v0, v6

    array-length v10, v10

    if-le v10, v11, :cond_2

    .line 149
    const/4 v7, 0x4

    .line 152
    :cond_2
    :goto_1
    array-length v10, v0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_b

    aget-object v13, v0, v12

    .line 153
    aget-object v14, v13, v6

    .line 154
    aget-object v13, v13, v7

    .line 155
    new-instance v15, Ljava/io/File;

    move-object/from16 v8, p1

    invoke-direct {v15, v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    nop

    .line 2052
    if-eqz p4, :cond_4

    if-nez p5, :cond_4

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lcom/uc/webview/export/internal/utility/s;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_3

    :cond_3
    move v9, v12

    goto/16 :goto_6

    .line 2056
    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2058
    if-ne v7, v9, :cond_5

    .line 2059
    sget-object v14, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v15, v14}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 2060
    :cond_5
    if-ne v7, v11, :cond_6

    .line 2061
    sget-object v14, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->SHA256:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v15, v14}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 2063
    :cond_6
    sget-object v14, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->SHA1:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v15, v14}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v14

    .line 2067
    :goto_4
    :try_start_0
    invoke-static {v13}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 2068
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v8, 0x3f3

    const-string v10, "file [%s] with [%s] [%s] mismatch to predefined [%s]."

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v15, v11, v6

    if-ne v7, v9, :cond_7

    const-string v12, "md5"

    goto :goto_5

    :cond_7
    const-string v12, "sha"

    :goto_5
    const/16 v18, 0x1

    aput-object v12, v11, v18

    aput-object v14, v11, v9

    const/4 v14, 0x3

    aput-object v13, v11, v14

    .line 2069
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2067
    :cond_8
    const/4 v14, 0x3

    .line 2078
    if-eqz p4, :cond_9

    .line 2079
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x1

    invoke-static {v13, v1, v9}, Lcom/uc/webview/export/internal/utility/s;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 2080
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move v9, v12

    sub-long v11, v18, v16

    .line 2081
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/uc/webview/export/internal/setup/h;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") Pass:true ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2081
    invoke-static {v5, v11}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    nop

    .line 159
    :goto_6
    sget v11, Lcom/uc/webview/export/internal/setup/h;->a:I

    sget-object v12, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v15, v13, v6

    const-string v14, "Check file hash ok [%s]."

    invoke-static {v12, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Throwable;

    invoke-static {v11, v12, v13}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 152
    add-int/lit8 v12, v9, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x4

    goto/16 :goto_2

    .line 2078
    :catchall_0
    move-exception v0

    if-eqz p4, :cond_a

    .line 2079
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v6}, Lcom/uc/webview/export/internal/utility/s;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 2080
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    .line 2081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/uc/webview/export/internal/setup/h;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") Pass:false ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2081
    invoke-static {v5, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    throw v0

    .line 161
    :cond_b
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    .line 164
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 10

    .line 128
    if-eqz p0, :cond_5

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    array-length v0, p2

    if-lez v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_4

    .line 133
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 134
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 136
    :goto_1
    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    :goto_3
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v4 .. v9}, Lcom/uc/webview/export/internal/setup/h;->a(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    .line 137
    return-void

    .line 130
    :cond_5
    :goto_4
    return-void
.end method
