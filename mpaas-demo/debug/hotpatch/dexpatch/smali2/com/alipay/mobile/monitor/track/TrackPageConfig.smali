.class public interface abstract Lcom/alipay/mobile/monitor/track/TrackPageConfig;
.super Ljava/lang/Object;
.source "TrackPageConfig.java"


# static fields
.field public static final KEY_ENTITY_CONTENT_TAGID:Ljava/lang/String; = "entityContentTagId"


# virtual methods
.method public abstract getExtParam()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageSpmId()Ljava/lang/String;
.end method

.method public abstract isTrackPage()Z
.end method
