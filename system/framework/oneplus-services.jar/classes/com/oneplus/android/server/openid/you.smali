.class public final synthetic Lcom/oneplus/android/server/openid/you;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic HK:Lcom/oneplus/android/server/openid/cno;

.field private final synthetic Vma:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/android/server/openid/cno;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, HK:Lcom/oneplus/android/server/openid/cno;

    iput-object p2, p0, Vma:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, HK:Lcom/oneplus/android/server/openid/cno;

    iget-object p0, p0, Vma:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/server/openid/cno;->tsu(Landroid/content/Context;)V

    return-void
.end method
