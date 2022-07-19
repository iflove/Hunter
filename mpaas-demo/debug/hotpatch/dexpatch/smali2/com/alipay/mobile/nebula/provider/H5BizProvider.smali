.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5BizProvider;
.super Ljava/lang/Object;
.source "H5BizProvider.java"


# static fields
.field public static final AUTH_CODE_OPEN_APP_ID:Ljava/lang/String; = "getAuthCodeOpenAppId"

.field public static final AUTH_CODE_RESULT:Ljava/lang/String; = "authCodeResult"

.field public static final BIZ_SERVICE_CALL:I = 0xbebf0bc

.field public static final BIZ_SERVICE_CALL_RESULT:I = 0xbebf0bd


# virtual methods
.method public abstract addBizCallback(Ljava/lang/String;Lcom/alipay/mobile/nebula/model/H5BizModel;)V
.end method

.method public abstract cancelBizTimeoutCheck(Ljava/lang/String;)V
.end method

.method public abstract saveBizResult(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract triggerBizCallback(Ljava/lang/String;)V
.end method
