.class Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;
.super Ljava/lang/Object;
.source "ConfigServiceLite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfig(Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

.field final synthetic val$configLoadCallBack:Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    .line 295
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    iput-object p2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->val$configLoadCallBack:Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "config":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfigDataManager()Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->access$300(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;)Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->val$key:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->getConfigFromSp(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->access$400(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->val$configLoadCallBack:Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

    if-eqz v1, :cond_1

    .line 303
    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->val$key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;->onLoaded(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_1
    return-void

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mContext:Landroid/content/ContextWrapper;
    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;)Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->mContentUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;->access$500(Lcom/alipay/mobile/base/config/impl/ConfigServiceLite;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->val$key:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    .line 308
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v2, v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 309
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "ret":Ljava/lang/Object;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 311
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 312
    move-object v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 313
    iget-object v3, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->val$configLoadCallBack:Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;

    if-eqz v3, :cond_3

    .line 314
    iget-object v4, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceLite$5;->val$key:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;->onLoaded(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_3
    return-void

    .line 318
    :cond_4
    return-void
.end method
