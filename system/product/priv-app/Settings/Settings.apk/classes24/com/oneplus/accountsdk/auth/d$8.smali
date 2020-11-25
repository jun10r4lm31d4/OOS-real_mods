.class final Lcom/oneplus/accountsdk/auth/d$8;
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

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/oneplus/accountsdk/auth/d;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/d;Lcom/oneplus/accountsdk/auth/OPAuthListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, c:Lcom/oneplus/accountsdk/auth/d;

    iput-object p2, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    iput-object p3, p0, b:Landroid/content/Context;

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

    iget-object p1, p0, c:Lcom/oneplus/accountsdk/auth/d;

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

    const-string p2, "empty_2"

    invoke-static {p2, p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, c:Lcom/oneplus/accountsdk/auth/d;

    iget-object p2, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string v0, "2002"

    invoke-static {p1, v0, p2}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_0
    new-instance p1, Lcom/oneplus/accountsdk/b/e/a;

    invoke-direct {p1}, Lcom/oneplus/accountsdk/b/e/a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/oneplus/accountsdk/b/e/a;->b(Ljava/lang/String;)Lcom/oneplus/accountsdk/b/e/b;

    iget-object p2, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/accountsdk/b/e/a;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, c:Lcom/oneplus/accountsdk/auth/d;

    iget-object v0, p0, b:Landroid/content/Context;

    iget-object p1, p1, Lcom/oneplus/accountsdk/b/e/a;->a:Ljava/lang/String;

    iget-object v1, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {p2, v0, p1, v1}, Lcom/oneplus/accountsdk/auth/d;->b(Lcom/oneplus/accountsdk/auth/d;Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

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

    iget-object p1, p0, b:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/d;->d(Landroid/content/Context;)V

    const-string p1, "3040"

    goto :goto_0

    :cond_2
    const-string p1, "1002"

    :goto_0
    iget-object p2, p0, c:Lcom/oneplus/accountsdk/auth/d;

    iget-object v0, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {p2, p1, v0}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    :cond_3
    return-void
.end method
