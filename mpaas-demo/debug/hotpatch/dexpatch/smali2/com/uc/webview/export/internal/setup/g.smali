.class public final Lcom/uc/webview/export/internal/setup/g;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static final a:I

.field private static b:Ljava/lang/Boolean;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/uc/webview/export/internal/setup/g;->a:I

    .line 351
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/setup/g;->b:Ljava/lang/Boolean;

    .line 352
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;I)V
    .locals 15

    .line 184
    move-object v1, p0

    move-object/from16 v2, p2

    const-string v3, "com.uc.webview.browser.shell.NativeLibraries"

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 189
    nop

    .line 191
    nop

    .line 193
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-static {v3, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    if-eqz v8, :cond_0

    .line 195
    :try_start_1
    const-string v0, "LIBRARIES"

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 197
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 239
    :cond_0
    :goto_0
    goto :goto_7

    .line 199
    :catchall_1
    move-exception v0

    move-object v8, v5

    .line 202
    :goto_1
    nop

    .line 206
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v0

    .line 207
    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x1

    goto :goto_3

    .line 214
    :cond_1
    :try_start_2
    const-string v0, "com.uc.webview.browser.shell.Build$Version"

    invoke-static {v0, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 215
    if-eqz v8, :cond_2

    .line 216
    const-string v0, "BUILD_SERIAL"

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 218
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 219
    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 220
    const/4 v0, 0x1

    goto :goto_2

    .line 227
    :cond_2
    const/4 v0, 0x0

    :goto_2
    nop

    .line 230
    :goto_3
    if-eqz v0, :cond_6

    .line 231
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez v8, :cond_3

    const/16 v1, 0xbca

    goto :goto_4

    :cond_3
    const/16 v1, 0xbcb

    :goto_4
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    if-nez v8, :cond_4

    const-string v5, "Class"

    goto :goto_5

    :cond_4
    const-string v5, "Field"

    :goto_5
    aput-object v5, v4, v6

    if-nez v8, :cond_5

    goto :goto_6

    :cond_5
    const-string v3, "com.uc.webview.browser.shell.NativeLibraries.LIBRARIES"

    :goto_6
    aput-object v3, v4, v7

    .line 234
    const-string v3, "%s [%s] missing."

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 241
    :cond_6
    :goto_7
    if-eqz v5, :cond_b

    array-length v0, v5

    if-lez v0, :cond_b

    .line 242
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    .line 243
    if-nez v0, :cond_7

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 247
    :cond_7
    and-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    .line 250
    :goto_8
    array-length v3, v5

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v3, :cond_a

    aget-object v9, v5, v8

    .line 251
    aget-object v10, v9, v6

    .line 252
    aget-object v9, v9, v7

    invoke-static {v9}, Lcom/uc/webview/export/internal/utility/k;->d(Ljava/lang/String;)J

    move-result-wide v11

    .line 254
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v10, v13, v11

    if-nez v10, :cond_9

    .line 264
    sget v10, Lcom/uc/webview/export/internal/setup/g;->a:I

    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v9, v12, v6

    const-string v9, "Check file size ok [%s]."

    invoke-static {v11, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v11, v6, [Ljava/lang/Throwable;

    invoke-static {v10, v9, v11}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 250
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 256
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ec4\u4ef6\u6821\u9a8c So Size Failed ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnvUtils"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0x3f0

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v6

    .line 260
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v7

    .line 261
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 258
    const-string v4, "So file [%s] with length [%d] mismatch to predefined [%d]."

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 267
    :cond_a
    if-eqz v2, :cond_b

    .line 268
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v2, v0, v5, v1}, Lcom/uc/webview/export/internal/setup/h;->a(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    :cond_b
    const/16 v0, 0xdb

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 273
    return-void

    .line 223
    :catchall_2
    move-exception v0

    .line 224
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbcc

    const-string v2, "Version.BUILD_SERIAL not found."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static final a(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/setup/br;",
            "Landroid/content/Context;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 123
    const-string v0, "tryLoadUCCore"

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 132
    :try_start_0
    const-string v1, "com.uc.webview.browser.shell.SdkAuthentication"

    invoke-virtual {p2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 135
    nop

    .line 137
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/util/HashMap;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 141
    :try_start_1
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 142
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 144
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v4

    aput-object p0, p3, v5

    aput-object v3, p3, v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    goto :goto_0

    .line 145
    :catch_0
    move-exception p3

    .line 146
    new-array p3, v6, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, p3, v4

    const-class v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    aput-object v1, p3, v5

    .line 148
    :try_start_2
    invoke-virtual {p2, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 149
    new-array p3, v6, [Ljava/lang/Object;

    aput-object p1, p3, v4

    aput-object p0, p3, v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 152
    nop

    .line 156
    :goto_0
    const/4 p0, 0x0

    :try_start_3
    invoke-static {p0, p2, v2, p3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result p0
    :try_end_3
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    xor-int/2addr p0, v5

    if-eqz p0, :cond_0

    .line 178
    nop

    .line 180
    const/16 p0, 0xd6

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 181
    return-void

    .line 158
    :cond_0
    :try_start_4
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p1, 0xfb1

    const-string p2, "tryLoadUCCore return false."

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_4
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    nop

    .line 163
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 164
    if-eqz p1, :cond_1

    .line 165
    const-string p2, "9"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 166
    if-nez p2, :cond_1

    .line 168
    add-int/lit8 p3, p2, 0x4

    :try_start_5
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->c(Ljava/lang/String;)I

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 170
    goto :goto_1

    .line 169
    :catch_1
    move-exception p1

    .line 173
    :cond_1
    :goto_1
    const/16 p1, 0x2328

    if-lt v4, p1, :cond_2

    .line 174
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {p1, v4, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 176
    :cond_2
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfb0

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 160
    :catch_2
    move-exception p0

    throw p0

    .line 150
    :catch_3
    move-exception p0

    .line 151
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfaf

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 133
    :catch_4
    move-exception p0

    .line 134
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfae

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public static final a(Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/setup/br;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 38
    if-nez p2, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    const/4 p2, 0x0

    .line 42
    nop

    .line 43
    const/4 v0, 0x1

    if-nez p4, :cond_1

    .line 44
    nop

    .line 45
    xor-int/lit8 p4, p3, 0x1

    const-string p2, "skip_old_extra_kernel"

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 50
    :cond_1
    if-nez p4, :cond_2

    .line 58
    return-void

    .line 51
    :cond_2
    sget p1, Lcom/uc/webview/export/internal/setup/g;->a:I

    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Throwable;

    const-string v1, "checkParamSkipOldKernel:true"

    invoke-static {p1, v1, p4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 53
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p4, 0xfa6

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    aput-object p0, v1, p3

    aput-object p2, v1, v0

    .line 54
    const-string p0, "UCM [%s] is excluded by param skip_old_extra_kernel value [%s]."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p4, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 64
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 65
    invoke-virtual {p0, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 66
    array-length v0, p4

    if-lez v0, :cond_2

    .line 67
    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 69
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v1, p4, p3

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    new-instance p2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p3, 0xfad

    const-string p4, "UCM version [%s] is excluded by rules [%s]."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    .line 74
    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 87
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfac

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 81
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uc/webview/export/internal/setup/br;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/uc/webview/export/internal/setup/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/g;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 358
    nop

    .line 359
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/g;->b(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result p0

    .line 358
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/setup/g;->b:Ljava/lang/Boolean;

    .line 361
    :cond_0
    sget-object p0, Lcom/uc/webview/export/internal/setup/g;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 362
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static final b(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;I)V
    .locals 12

    .line 276
    const-string v0, "com.uc.webview.browser.shell.PakAssets"

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 281
    nop

    .line 283
    nop

    .line 285
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v0, v4, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    if-eqz p2, :cond_0

    .line 287
    :try_start_1
    const-string v5, "ASSETS"

    invoke-virtual {p2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 289
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 311
    :cond_0
    :goto_0
    goto :goto_6

    .line 291
    :catchall_1
    move-exception p2

    move-object p2, v2

    .line 294
    :goto_1
    nop

    .line 297
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v5

    .line 298
    if-eqz v5, :cond_1

    .line 299
    const/4 v5, 0x1

    goto :goto_2

    .line 298
    :cond_1
    const/4 v5, 0x0

    .line 302
    :goto_2
    if-eqz v5, :cond_5

    .line 303
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez p2, :cond_2

    const/16 p1, 0xbd4

    goto :goto_3

    :cond_2
    const/16 p1, 0xbd5

    :goto_3
    sget-object p3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    if-nez p2, :cond_3

    const-string v2, "Class"

    goto :goto_4

    :cond_3
    const-string v2, "Field"

    :goto_4
    aput-object v2, v1, v3

    if-nez p2, :cond_4

    goto :goto_5

    :cond_4
    const-string v0, "com.uc.webview.browser.shell.PakAssets.ASSETS"

    :goto_5
    aput-object v0, v1, v4

    .line 306
    const-string p2, "%s [%s] missing."

    invoke-static {p3, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 313
    :cond_5
    :goto_6
    if-eqz v2, :cond_b

    array-length p2, v2

    if-lez p2, :cond_b

    .line 314
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/br;->resDirPath:Ljava/lang/String;

    .line 315
    if-nez p0, :cond_6

    .line 316
    return-void

    .line 318
    :cond_6
    new-instance p2, Ljava/io/File;

    const-string v0, ""

    invoke-direct {p2, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 319
    new-instance p2, Ljava/io/File;

    const-string v0, "paks"

    invoke-direct {p2, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 321
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 324
    :cond_7
    and-int/lit8 p2, p3, 0x40

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    goto :goto_7

    :cond_8
    const/4 p2, 0x0

    .line 326
    :goto_7
    array-length v0, v2

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v0, :cond_a

    aget-object v6, v2, v5

    .line 327
    aget-object v7, v6, v3

    .line 328
    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/k;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 330
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-nez v7, :cond_9

    .line 340
    sget v7, Lcom/uc/webview/export/internal/setup/g;->a:I

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v3

    const-string v6, "Check file size ok [%s]."

    invoke-static {v8, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Throwable;

    invoke-static {v7, v6, v8}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 326
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 332
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\u7ec4\u4ef6\u6821\u9a8c Pak Size Failed ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnvUtils"

    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p1, 0x3f6

    sget-object p2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v6, p3, v3

    .line 336
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v4

    .line 337
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v1

    .line 334
    const-string v0, "So file [%s] with length [%d] mismatch to predefined [%d]."

    invoke-static {p2, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 343
    :cond_a
    if-eqz p2, :cond_b

    .line 344
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p0, v2, p2}, Lcom/uc/webview/export/internal/setup/h;->b(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    :cond_b
    const/16 p0, 0xd7

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 348
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 94
    :try_start_0
    const-string v0, ""

    .line 95
    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 96
    invoke-virtual {p0, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 97
    array-length v2, p4

    if-lez v2, :cond_2

    .line 98
    invoke-static {p2, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 99
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 100
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object p3, p4, p2

    .line 101
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 102
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-virtual {v0, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 104
    :cond_0
    return-void

    .line 100
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 110
    :cond_2
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfbd

    const-string p3, "UCM version [%s] not included by rules [%s]."

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object v0, p4, v1

    const/4 v0, 0x1

    aput-object p0, p4, v0

    .line 111
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    move-exception p0

    .line 118
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfac

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method private static b(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uc/webview/export/internal/setup/br;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 367
    const-string v0, "ucmZipFile"

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 370
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    iget-object p1, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/k;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 373
    :cond_0
    const-string v0, "ucmUpdUrl"

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 375
    const-string v1, "updates"

    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 377
    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 378
    new-instance v1, Ljava/io/File;

    .line 379
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    iget-object p0, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    .line 382
    const/4 v3, 0x1

    if-nez p0, :cond_1

    .line 383
    return v3

    .line 385
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object p0

    const-string v4, "exact_old"

    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 386
    return v2

    .line 388
    :cond_2
    const-string p0, "dlChecker"

    invoke-virtual {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Callable;

    .line 390
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 391
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;Ljava/net/URL;)Landroid/util/Pair;

    move-result-object p0

    .line 392
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 393
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    iget-object p0, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    .line 396
    return v3

    .line 398
    :cond_3
    goto :goto_0

    .line 401
    :cond_4
    return v2

    .line 404
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    return v2

    .line 413
    :cond_5
    :goto_0
    return v2
.end method
