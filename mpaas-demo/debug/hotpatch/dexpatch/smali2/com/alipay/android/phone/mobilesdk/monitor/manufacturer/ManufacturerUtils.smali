.class public Lcom/alipay/android/phone/mobilesdk/monitor/manufacturer/ManufacturerUtils;
.super Ljava/lang/Object;
.source "ManufacturerUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 132
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/manufacturer/ManufacturerUtils;->b(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 133
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 134
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/manufacturer/ManufacturerUtils;->c(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 136
    :cond_2
    return v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 143
    :try_start_0
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    .line 144
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 145
    .end local v1    # "nm":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v0

    .line 146
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ManufacturerUtils"

    const-string v3, "getNotificationsStateCompatApi24"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    const/4 v1, -0x1

    return v1
.end method

.method private static c(Landroid/content/Context;)I
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    const-string v1, "ManufacturerUtils"

    .line 155
    const/4 v2, -0x1

    :try_start_0
    const-string v0, "appops"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p0

    :try_start_1
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 156
    .local v0, "mAppOps":Landroid/app/AppOpsManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 157
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "pkg":Ljava/lang/String;
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .local v6, "uid":I
    const/4 v7, 0x0

    move-object v8, v7

    .line 161
    .local v8, "appOpsClass":Ljava/lang/Class;
    const-class v9, Landroid/app/AppOpsManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 162
    move-object v8, v9

    const-string v10, "checkOpNoThrow"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v13, v12, v15

    const-class v13, Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v13, v12, v16

    .line 163
    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v10, v7

    .line 169
    .local v10, "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    move-object v10, v9

    invoke-virtual {v9, v15}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 170
    const-string v9, "OP_POST_NOTIFICATION"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 171
    .local v7, "opPostNotificationValue":Ljava/lang/reflect/Field;
    move-object v7, v9

    invoke-virtual {v9, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 174
    .local v9, "value":I
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v15

    aput-object v5, v11, v16

    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v12, v14

    .line 175
    .local v12, "result":I
    move v12, v11

    if-nez v11, :cond_0

    .line 176
    return v14

    .line 177
    :cond_0
    if-ne v15, v12, :cond_1

    .line 178
    return v15

    .line 180
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getNotificationsEnabledCompatKitkat, result code is "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v1, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    return v2

    .line 185
    .end local v0    # "mAppOps":Landroid/app/AppOpsManager;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v7    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v8    # "appOpsClass":Ljava/lang/Class;
    .end local v9    # "value":I
    .end local v10    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v12    # "result":I
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    .line 186
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "getNotificationsEnabledCompatKitkat"

    invoke-interface {v4, v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    return v2
.end method
