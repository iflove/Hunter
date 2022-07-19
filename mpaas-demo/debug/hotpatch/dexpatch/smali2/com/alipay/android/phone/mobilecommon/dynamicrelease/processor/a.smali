.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;
.super Ljava/lang/Object;
.source "Compat.java"


# static fields
.field private static a:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->ALL:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 38
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->c()Z

    move-result v0

    const-string v1, "Compat"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->b()Z

    .line 39
    const-string v0, "AndFix.Compat: checkSupportSDKVersion() && checkRuntimeSupport()=true"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->ALL:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 43
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AndFix.Compat: sAndroidVmType="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static a()Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;
    .locals 1

    .line 47
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    return-object v0
.end method

.method private static b()Z
    .locals 2

    .line 59
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->AOC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 62
    return v1

    .line 64
    :cond_0
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->Lemur:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 65
    return v1

    .line 68
    :cond_1
    return v1
.end method

.method private static c()Z
    .locals 3

    .line 75
    const/4 v0, 0x0

    .local v0, "sdkInt":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    move v0, v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 78
    const/16 v1, 0x15

    if-lt v0, v2, :cond_0

    if-ge v0, v1, :cond_0

    .line 79
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    sget-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->Dalvik:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    sput-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 98
    const/4 v1, 0x1

    .local v1, "isSupport":Z
    goto :goto_0

    .line 100
    .end local v1    # "isSupport":Z
    :cond_0
    if-lt v0, v1, :cond_1

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    .line 101
    sget-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->ART:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    sput-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 102
    const/4 v1, 0x1

    .restart local v1    # "isSupport":Z
    goto :goto_0

    .line 104
    .end local v1    # "isSupport":Z
    :cond_1
    const/4 v1, 0x0

    .line 106
    .restart local v1    # "isSupport":Z
    :goto_0
    return v1
.end method

.method private static d()Z
    .locals 9

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 113
    .local v1, "vmName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 115
    .local v6, "m":Ljava/lang/reflect/Method;
    move-object v6, v4

    new-array v7, v3, [Ljava/lang/Object;

    const-string/jumbo v8, "ro.yunos.version"

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 116
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "java.vm.name"

    aput-object v7, v4, v2

    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 119
    .end local v6    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 117
    :catch_0
    move-exception v4

    .line 120
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lemur"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 122
    :cond_1
    return v3

    .line 124
    :cond_2
    return v2
.end method

.method private static e()Z
    .locals 10

    const-string v0, "Compat"

    const/4 v1, 0x0

    .line 132
    .local v1, "runtimeLib":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 133
    .local v5, "systemProperties":Ljava/lang/Class;
    move-object v5, v3

    const-string v6, "get"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 134
    .local v4, "m":Ljava/lang/reflect/Method;
    move-object v4, v3

    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "persist.sys.dalvik.vm.lib"

    aput-object v8, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "runtimeLib is "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const-string v3, "libart.so"

    if-eqz v1, :cond_0

    .line 138
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 139
    return v7

    .line 143
    :cond_0
    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "persist.sys.dalvik.vm.lib.2"

    aput-object v8, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "runtimeLib2 is "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    .line 147
    return v7

    .line 152
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "systemProperties":Ljava/lang/Class;
    :cond_1
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 154
    :goto_0
    return v2
.end method
