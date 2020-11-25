.class final Lcom/oneplus/accountsdk/auth/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/accountbase/network/callback/OPHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountsdk/auth/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/accountbase/network/callback/OPHttpCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/oneplus/accountsdk/auth/d;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/d;Lcom/oneplus/accountsdk/auth/OPAuthListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, d:Lcom/oneplus/accountsdk/auth/d;

    iput-object p2, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    iput-object p3, p0, b:Ljava/lang/String;

    iput-object p4, p0, c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lokhttp3/Call;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, d:Lcom/oneplus/accountsdk/auth/d;

    iget-object p2, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string v0, "2002"

    invoke-static {p1, v0, p2}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public final synthetic onResponse(Lokhttp3/Call;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "empty_1"

    invoke-static {p2, p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, d:Lcom/oneplus/accountsdk/auth/d;

    iget-object p2, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string v0, "2002"

    invoke-static {p1, v0, p2}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_0
    new-instance p1, Lcom/oneplus/accountsdk/b/e/a;

    invoke-direct {p1}, Lcom/oneplus/accountsdk/b/e/a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/oneplus/accountsdk/b/e/a;->b(Ljava/lang/String;)Lcom/oneplus/accountsdk/b/e/b;

    iget-object v1, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/accountsdk/b/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, d:Lcom/oneplus/accountsdk/auth/d;

    new-instance v1, Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    invoke-direct {v1}, Lcom/oneplus/accountsdk/entity/AuthUserInfo;-><init>()V

    invoke-static {v0, v1}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;Lcom/oneplus/accountsdk/entity/AuthUserInfo;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    iget-object v0, p0, d:Lcom/oneplus/accountsdk/auth/d;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->isLogin:Z

    iget-object v0, p0, d:Lcom/oneplus/accountsdk/auth/d;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object v0

    const-string v1, "1000"

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->resultCode:Ljava/lang/String;

    iget-object v0, p0, d:Lcom/oneplus/accountsdk/auth/d;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object v0

    invoke-static {v1}, Lcom/oneplus/accountsdk/auth/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->resultMsg:Ljava/lang/String;

    iget-object v0, p0, d:Lcom/oneplus/accountsdk/auth/d;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object v0

    iget-object v1, p0, b:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->authToken:Ljava/lang/String;

    iget-object v0, p0, d:Lcom/oneplus/accountsdk/auth/d;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object v0

    iget-object p1, p1, Lcom/oneplus/accountsdk/b/e/a;->f:Ljava/lang/String;

    iput-object p1, v0, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->userName:Ljava/lang/String;

    iget-object p1, p0, d:Lcom/oneplus/accountsdk/auth/d;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/oneplus/accountsdk/b/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->jsonString:Ljava/lang/String;

    iget-object p1, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    iget-object p2, p0, d:Lcom/oneplus/accountsdk/auth/d;

    invoke-static {p2}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    iget-object p1, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    return-void

    :cond_1
    iget-object p2, p1, Lcom/oneplus/accountsdk/b/e/a;->o:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/oneplus/accountsdk/b/e/a;->o:Ljava/lang/String;

    const-string p2, "SERVICE_AUTH_TOKEN_INVALID"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, c:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/d;->d(Landroid/content/Context;)V

    const-string p1, "3040"

    goto :goto_0

    :cond_2
    const-string p1, "1002"

    :goto_0
    iget-object p2, p0, d:Lcom/oneplus/accountsdk/auth/d;

    iget-object v0, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {p2, p1, v0}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    :cond_3
    return-void
.end method
