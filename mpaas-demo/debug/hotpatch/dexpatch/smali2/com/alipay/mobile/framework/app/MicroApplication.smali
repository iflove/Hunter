.class public abstract Lcom/alipay/mobile/framework/app/MicroApplication;
.super Ljava/lang/Object;
.source "MicroApplication.java"

# interfaces
.implements Lcom/alipay/mobile/framework/MicroContent;


# static fields
.field public static final KEY_APP_CLEAR_TOP:Ljava/lang/String; = "appClearTop"

.field public static final KEY_APP_SCENE_ID:Ljava/lang/String; = "ap_framework_sceneId"

.field public static final KEY_APP_START_FROM_EXTERNAL:Ljava/lang/String; = "startFromExternal"


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field protected mDes:Lcom/alipay/mobile/framework/app/ApplicationDescription;

.field protected mIsPrevent:Z

.field protected mIsStartFromExternal:Z

.field protected mSceneId:Ljava/lang/String;

.field protected mSceneParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mIsPrevent:Z

    .line 84
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mIsStartFromExternal:Z

    .line 85
    return-void
.end method


# virtual methods
.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1
    .param p1, "applicationContext"    # Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "applicationContext"    # Lcom/alipay/mobile/framework/MicroApplicationContext;
    .param p2, "sceneParams"    # Landroid/os/Bundle;

    .line 223
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 224
    iput-object p2, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mSceneParams:Landroid/os/Bundle;

    .line 225
    return-void
.end method

.method public canRestart(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public abstract create(Landroid/os/Bundle;)V
.end method

.method public destroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 210
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->onDestroy(Landroid/os/Bundle;)V

    .line 211
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->d:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEntryClassName()Ljava/lang/String;
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public getParentAppClassName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneParams()Landroid/os/Bundle;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mSceneParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getmDes()Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mDes:Lcom/alipay/mobile/framework/app/ApplicationDescription;

    return-object v0
.end method

.method public isStartFromExternal()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mIsStartFromExternal:Z

    return v0
.end method

.method protected abstract onCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract onDestroy(Landroid/os/Bundle;)V
.end method

.method protected abstract onRestart(Landroid/os/Bundle;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method public abstract restart(Landroid/os/Bundle;)V
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .line 286
    return-void
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 282
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->d:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public final setIsPrevent(Z)V
    .locals 0
    .param p1, "isPrevent"    # Z

    .line 133
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mIsPrevent:Z

    .line 134
    return-void
.end method

.method public setParentAppClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentAppClassName"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->c:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 0
    .param p1, "referrer"    # Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->e:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mSceneId:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setSceneParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "sceneParams"    # Landroid/os/Bundle;

    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mSceneParams:Landroid/os/Bundle;

    .line 207
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceId"    # Ljava/lang/String;

    .line 260
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->b:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setStartFromExternal(Z)V
    .locals 0
    .param p1, "isStartFromExternal"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mIsStartFromExternal:Z

    .line 142
    return-void
.end method

.method public setmDes(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
    .locals 0
    .param p1, "des"    # Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 301
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->mDes:Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 302
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
