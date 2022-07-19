.class public Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;
.super Ljava/lang/Object;
.source "SharedPreferencesManager.java"


# static fields
.field public static final SP_COMMON_MAIN_PROCESS:Ljava/lang/String; = "SP_CommonMainProcess"

.field private static spList:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->spList:Landroidx/collection/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 35
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->spList:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 39
    .local v0, "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    move-object v0, v1

    if-nez v1, :cond_2

    .line 40
    const-class v1, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->spList:Landroidx/collection/LruCache;

    invoke-virtual {v2, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 42
    move-object v0, v2

    if-nez v2, :cond_1

    .line 43
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v0, v2

    .line 44
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->spList:Landroidx/collection/LruCache;

    invoke-virtual {v2, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 48
    :cond_2
    :goto_0
    return-object v0

    .line 36
    .end local v0    # "sp":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :cond_3
    :goto_1
    return-object v0
.end method
