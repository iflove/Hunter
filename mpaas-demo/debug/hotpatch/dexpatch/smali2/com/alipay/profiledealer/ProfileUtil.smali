.class public Lcom/alipay/profiledealer/ProfileUtil;
.super Ljava/lang/Object;
.source "ProfileUtil.java"


# static fields
.field public static CONTEXT:Landroid/content/Context;

.field public static DUMP_LITE_PROFILE:Z

.field public static DUMP_PROFILE:Z

.field public static RESTORE_PROFILE:Z

.field public static TRY_COMPILE:Z

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->DUMP_PROFILE:Z

    .line 28
    sput-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->RESTORE_PROFILE:Z

    .line 29
    sput-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->TRY_COMPILE:Z

    .line 30
    sput-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->DUMP_LITE_PROFILE:Z

    .line 31
    const/16 v0, 0x1388

    sput v0, Lcom/alipay/profiledealer/ProfileUtil;->a:I

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/profiledealer/ProfileUtil;->CONTEXT:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 217
    .local v1, "intentField":Ljava/lang/reflect/Field;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 218
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private static a(Landroid/os/Looper;)Landroid/os/Bundle;
    .locals 19
    .param p0, "looper"    # Landroid/os/Looper;

    const-string v1, "ProfileDealer"

    .line 118
    const/4 v2, 0x0

    :try_start_0
    const-class v0, Landroid/os/Looper;

    const-string v3, "mQueue"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v3, v2

    .line 119
    .local v3, "mQueueField":Ljava/lang/reflect/Field;
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 120
    move-object/from16 v5, p0

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    .line 122
    .local v6, "queue":Ljava/lang/Object;
    const-class v0, Landroid/os/MessageQueue;

    const-string v7, "mMessages"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v7, v2

    .line 123
    .local v7, "mMessagesField":Ljava/lang/reflect/Field;
    move-object v7, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "mMessage":Ljava/lang/Object;
    const-class v8, Landroid/os/Message;

    const-string v9, "obj"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move-object v9, v2

    .line 127
    .local v9, "objField":Ljava/lang/reflect/Field;
    move-object v9, v8

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 133
    .local v8, "obj":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 134
    .local v10, "checkCount":I
    const/4 v11, 0x0

    if-nez v8, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 135
    .local v11, "isFirstObjNull":Z
    :goto_0
    move v11, v12

    if-eqz v12, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    :goto_1
    move-object v13, v2

    .line 136
    .local v12, "startRecordName":Ljava/lang/String;
    :goto_2
    invoke-static {v12, v8}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 137
    add-int/lit8 v10, v10, 0x1

    .line 138
    const-class v14, Landroid/os/Message;

    const-string v15, "next"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 139
    .local v13, "nextField":Ljava/lang/reflect/Field;
    move-object v13, v14

    invoke-virtual {v14, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 141
    move-object v0, v14

    if-eqz v14, :cond_3

    const/4 v14, 0x5

    if-ge v10, v14, :cond_3

    .line 144
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 145
    move-object v8, v14

    if-nez v14, :cond_2

    move-object v14, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_3
    move-object v12, v14

    .line 146
    .end local v13    # "nextField":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 148
    :cond_3
    move/from16 v18, v10

    move-object v10, v0

    move-object v0, v13

    move/from16 v13, v18

    goto :goto_4

    .line 136
    :cond_4
    move/from16 v18, v10

    move-object v10, v0

    move-object v0, v13

    move/from16 v13, v18

    .line 148
    .end local v0    # "mMessage":Ljava/lang/Object;
    .local v10, "mMessage":Ljava/lang/Object;
    .local v13, "checkCount":I
    :goto_4
    if-eqz v8, :cond_b

    .line 153
    :try_start_2
    const-string v14, "ActivityClientRecord"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 154
    const-string v4, "intent"

    invoke-static {v8, v4}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    move-object v0, v4

    if-eqz v4, :cond_5

    .line 156
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    goto/16 :goto_7

    :cond_6
    const-string v14, "ClientTransaction"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v14, :cond_a

    .line 160
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "mActivityCallbacks"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 161
    .local v0, "mActivityCallbacksField":Ljava/lang/reflect/Field;
    move-object v0, v14

    invoke-virtual {v14, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 162
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v14, v2

    .line 163
    .local v14, "mActivityCallbacks":Ljava/util/List;
    move-object v14, v4

    if-eqz v4, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 164
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v15, v2

    move-object/from16 v16, v15

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 165
    .local v15, "itemObject":Ljava/lang/Object;
    move-object/from16 v15, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v0

    .end local v0    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .local v17, "mActivityCallbacksField":Ljava/lang/reflect/Field;
    const-string v0, "LaunchActivityItem"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    const-string v0, "mIntent"

    invoke-static {v15, v0}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v2, v16

    .line 167
    .local v2, "intent":Landroid/content/Intent;
    move-object/from16 v16, v0

    .end local v2    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_7

    .line 168
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    .line 171
    .end local v15    # "itemObject":Ljava/lang/Object;
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, v17

    const/4 v2, 0x0

    goto :goto_5

    .line 164
    .end local v17    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .restart local v0    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    :cond_8
    move-object/from16 v17, v0

    .end local v0    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .restart local v17    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    goto :goto_6

    .line 163
    .end local v17    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .restart local v0    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    :cond_9
    move-object/from16 v17, v0

    .line 175
    .end local v0    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .end local v14    # "mActivityCallbacks":Ljava/util/List;
    :goto_6
    goto :goto_7

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_a
    goto :goto_7

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_7
    const/4 v1, 0x0

    return-object v1

    .line 149
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Got empty message obj, retry count:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isFirstObjNull:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "looper":Landroid/os/Looper;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 182
    .end local v3    # "mQueueField":Ljava/lang/reflect/Field;
    .end local v6    # "queue":Ljava/lang/Object;
    .end local v7    # "mMessagesField":Ljava/lang/reflect/Field;
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v9    # "objField":Ljava/lang/reflect/Field;
    .end local v10    # "mMessage":Ljava/lang/Object;
    .end local v11    # "isFirstObjNull":Z
    .end local v12    # "startRecordName":Ljava/lang/String;
    .end local v13    # "checkCount":I
    .restart local p0    # "looper":Landroid/os/Looper;
    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v5, p0

    .line 183
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :goto_8
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0    # "tr":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static a()Ljava/lang/Object;
    .locals 4

    .line 108
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getPackageManager"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 110
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 254
    if-eqz p0, :cond_0

    .line 257
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    .line 260
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "ProfileDealer"

    const-string v2, "closeSafely(Closeable): Exception occur."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void

    .line 261
    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "iFile"    # Ljava/io/File;
    .param p1, "oFile"    # Ljava/io/File;

    .line 227
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 229
    .local v0, "bRet":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copySingleFile(File["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], File["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]): null == iFile || !iFile.exists() || null == oFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfileDealer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v0    # "bRet":Z
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/profiledealer/ProfileUtil;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 233
    .restart local v0    # "bRet":Z
    :goto_0
    return v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "bRet":Z
    const-string v1, "streamToFile(InputStream, File["

    const-string v2, "ProfileDealer"

    if-nez p1, :cond_0

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]): null == is || null == file"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 295
    :cond_0
    const/4 v3, 0x1

    .line 296
    .local v3, "mkDir":Z
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    .line 297
    .local v5, "dir":Ljava/io/File;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]): parent dir already exist, no need to call mkdirs()."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 303
    :goto_0
    if-eqz v3, :cond_2

    .line 304
    const/4 v4, 0x0

    .line 306
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 307
    invoke-static {p0, v4}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 311
    goto :goto_1

    .line 308
    :catchall_0
    move-exception v6

    .line 309
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/io/Closeable;)V

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]): Exception occur."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "tr":Ljava/lang/Throwable;
    goto :goto_1

    .line 313
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]): failed to make parent dir."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v3    # "mkDir":Z
    .end local v5    # "dir":Ljava/io/File;
    :goto_1
    return v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "bRet":Z
    const/16 v1, 0x2000

    :try_start_0
    new-array v1, v1, [B

    .line 269
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 270
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    const/4 v0, 0x1

    .line 277
    .end local v1    # "buffer":[B
    .end local v3    # "length":I
    goto :goto_1

    .line 274
    :catchall_0
    move-exception v1

    .line 275
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "ProfileDealer"

    const-string v3, "streamToStream(InputStream, OutputStream): Exception occur."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    nop

    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_1
    invoke-static {p1}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/io/Closeable;)V

    .line 278
    invoke-static {p0}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/io/Closeable;)V

    .line 279
    nop

    .line 280
    return v0

    .line 277
    :catchall_1
    move-exception v1

    invoke-static {p1}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/io/Closeable;)V

    .line 278
    invoke-static {p0}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "startRecordName"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 190
    const-string v0, "ActivityClientRecord"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 191
    return v1

    .line 193
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_3

    .line 194
    const-string v0, "ClientTransaction"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mActivityCallbacks"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 197
    .local v3, "mActivityCallbacksField":Ljava/lang/reflect/Field;
    move-object v3, v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 198
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 199
    .local v2, "mActivityCallbacks":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 200
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LaunchActivityItem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 202
    return v1

    .line 204
    :cond_1
    goto :goto_0

    .line 208
    .end local v2    # "mActivityCallbacks":Ljava/util/List;
    .end local v3    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    :cond_2
    goto :goto_1

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "ProfileDealer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p0, "iFile"    # Ljava/io/File;
    .param p1, "oFile"    # Ljava/io/File;

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 242
    move-object v0, v1

    invoke-static {v1, p1}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .local v1, "bRet":Z
    goto :goto_0

    .line 243
    .end local v1    # "bRet":Z
    :catchall_0
    move-exception v1

    .line 244
    .local v1, "tr":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 245
    .local v2, "bRet":Z
    invoke-static {v0}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/io/Closeable;)V

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doCopySingleFile(File["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], File["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]): Exception occur."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProfileDealer"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 249
    .end local v2    # "bRet":Z
    .local v1, "bRet":Z
    :goto_0
    return v1
.end method

.method public static checkStrategy(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    sput-object p0, Lcom/alipay/profiledealer/ProfileUtil;->CONTEXT:Landroid/content/Context;

    .line 38
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/profiledealer/ProfileUtil;->a(Landroid/os/Looper;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    .local v1, "startupStrategy":Landroid/os/Bundle;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "perf_dump_profile"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->DUMP_PROFILE:Z

    .line 41
    const-string v0, "perf_restore_profile"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->RESTORE_PROFILE:Z

    .line 42
    const-string v0, "perf_try_compile"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->TRY_COMPILE:Z

    .line 43
    const-string v0, "perf_dump_lite_profile"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/profiledealer/ProfileUtil;->DUMP_LITE_PROFILE:Z

    .line 44
    const-string v0, "perf_finish_wait_time"

    const/16 v2, 0x1388

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/profiledealer/ProfileUtil;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v1    # "startupStrategy":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "ProfileDealer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static copySingleFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "iFile"    # Ljava/lang/String;
    .param p1, "oFile"    # Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/profiledealer/ProfileUtil;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static dumpCurrentProfileInfo(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/misc/profiles/cur/0/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/primary.prof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 60
    .local v2, "profileFile":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v3, "ProfileDealer"

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "primary.prof file length:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " lastModified:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    const-string v1, "no primary.prof exit"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static dumpPrimaryProf(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/misc/profiles/cur/0/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/primary.prof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-primary.prof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lcom/alipay/profiledealer/ProfileUtil;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 71
    .local v1, "backupPrimaryProfResult":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dumpPrimaryProf: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProfileDealer"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public static initSO(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libprofiledealer.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/profiledealer/libprofiledealer.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/alipay/profiledealer/ProfileUtil;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 54
    .local v0, "initSO":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSO: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfileDealer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public static profileCompile(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "ProfileDealer"

    .line 83
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/profiledealer/ProfileUtil;->a()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 84
    .local v3, "pm":Ljava/lang/Object;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, "can not found package service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v1

    .line 97
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "performDexOptMode"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 100
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "speed-profile"

    aput-object v5, v4, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 101
    .end local v3    # "pm":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 102
    .local v2, "tr":Ljava/lang/Throwable;
    const-string v3, "profileCompile failed:"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    return v1
.end method

.method public static restorePrimaryProf(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-primary.prof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/misc/profiles/cur/0/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/primary.prof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/profiledealer/ProfileUtil;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 78
    .local v1, "restorePrimaryProfResult":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restorePrimaryProfResult: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProfileDealer"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public static startTinyAppDelayed()V
    .locals 4

    .line 336
    const-string v0, "ProfileDealer"

    const-string v1, "startTinyAppDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/profiledealer/ProfileUtil$2;

    invoke-direct {v1}, Lcom/alipay/profiledealer/ProfileUtil$2;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method public static stopDumpProfileDelayed(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 321
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/profiledealer/ProfileUtil$1;

    invoke-direct {v1, p0}, Lcom/alipay/profiledealer/ProfileUtil$1;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/alipay/profiledealer/ProfileUtil;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    return-void
.end method
