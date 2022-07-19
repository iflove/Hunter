.class public Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;
.super Ljava/lang/Object;
.source "UserEnvironment.java"


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/io/File;


# instance fields
.field private a:I

.field private final b:[Ljava/io/File;

.field private final c:[Ljava/io/File;

.field private final d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 199
    const-string v0, "EMULATED_STORAGE_TARGET"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->e:Ljava/lang/String;

    .line 201
    const-string v0, "MEDIA_STORAGE"

    const-string v1, "/data/media"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->f:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a:I

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 51
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a:I

    .line 54
    :cond_0
    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "rawExternalStorage":Ljava/lang/String;
    const-string v2, "EMULATED_STORAGE_SOURCE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "rawEmulatedSource":Ljava/lang/String;
    const-string v3, "EMULATED_STORAGE_TARGET"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "rawEmulatedTarget":Ljava/lang/String;
    const-string v4, "MEDIA_STORAGE"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 59
    .local v6, "rawMediaStorage":Ljava/lang/String;
    move-object v6, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    const-string v6, "/data/media"

    .line 63
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/storage/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 64
    .local v4, "externalForVold":Ljava/util/ArrayList;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/storage/Lists;->a()Ljava/util/ArrayList;

    move-result-object v7

    .line 66
    .local v7, "externalForApp":Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 69
    iget v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "rawUserId":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v8, "emulatedSourceBase":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v9, "emulatedTargetBase":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v10, "mediaBase":Ljava/io/File;
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v5, v12, v0

    invoke-static {v8, v12}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-array v12, v11, [Ljava/lang/String;

    aput-object v5, v12, v0

    invoke-static {v9, v12}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-array v11, v11, [Ljava/lang/String;

    aput-object v5, v11, v0

    invoke-static {v10, v11}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    iput-object v11, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->d:Ljava/io/File;

    .line 80
    .end local v5    # "rawUserId":Ljava/lang/String;
    .end local v8    # "emulatedSourceBase":Ljava/io/File;
    .end local v9    # "emulatedTargetBase":Ljava/io/File;
    .end local v10    # "mediaBase":Ljava/io/File;
    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 83
    const-string v8, "UserEnvironment"

    const-string v9, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "/storage/sdcard0"

    .line 88
    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->d:Ljava/io/File;

    .line 95
    :goto_0
    const-string v8, "SECONDARY_STORAGE"

    invoke-static {v8}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v5, "rawSecondaryStorage":Ljava/lang/String;
    move-object v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    iget v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a:I

    if-nez v8, :cond_4

    .line 97
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_1
    if-ge v0, v9, :cond_4

    aget-object v10, v8, v0

    .line 98
    .local v10, "secondaryPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v10    # "secondaryPath":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->b:[Ljava/io/File;

    .line 104
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c:[Ljava/io/File;

    .line 105
    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0, "path"    # Ljava/io/File;

    .line 223
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v1

    .line 230
    .local v3, "rawPath":Ljava/lang/String;
    move-object v3, v2

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->f:Ljava/io/File;

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 233
    .local v0, "internalPath":Ljava/io/File;
    move-object v0, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    .line 234
    return-object v0

    .line 239
    .end local v0    # "internalPath":Ljava/io/File;
    .end local v3    # "rawPath":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 237
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object v0, v1

    .line 238
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to resolve canonical path for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserEnvironment"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object p0

    .line 225
    :cond_2
    :goto_2
    return-object p0
.end method

.method private static varargs a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .line 188
    move-object v0, p0

    .line 189
    .local v0, "cur":Ljava/io/File;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 190
    .local v3, "segment":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 191
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_1

    .line 193
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 189
    .end local v3    # "segment":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    .line 217
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 218
    .local v1, "path":Ljava/lang/String;
    move-object v1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static varargs a([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "base"    # [Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .line 177
    array-length v0, p0

    new-array v0, v0, [Ljava/io/File;

    .line 178
    .local v0, "result":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 179
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "variableName"    # Ljava/lang/String;

    .line 204
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 205
    .local v2, "path":Ljava/lang/String;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 206
    return-object v1

    .line 209
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unable to resolve canonical path for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UserEnvironment"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)[Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c:[Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
