.class public Lcom/android/server/wm/ugm$zta$zta;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ugm$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ugm$zta;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ugm$zta;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/ugm$zta;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, this$0:Lcom/android/server/wm/ugm$zta;

    invoke-virtual {p0}, Lcom/android/server/wm/ugm$zta;->Be()V

    return-void
.end method
