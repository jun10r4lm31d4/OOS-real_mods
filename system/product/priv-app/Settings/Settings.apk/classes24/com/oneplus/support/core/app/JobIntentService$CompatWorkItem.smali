.class final Lcom/oneplus/support/core/app/JobIntentService$CompatWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Lcom/oneplus/support/core/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CompatWorkItem"
.end annotation


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mStartId:I

.field final synthetic this$0:Lcom/oneplus/support/core/app/JobIntentService;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/app/JobIntentService;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/support/core/app/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, mIntent:Landroid/content/Intent;

    iput p3, p0, mStartId:I

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/app/JobIntentService;

    iget v1, p0, mStartId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/app/JobIntentService;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, mIntent:Landroid/content/Intent;

    return-object v0
.end method
