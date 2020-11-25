.class Lcom/android/server/policy/OpQuickPay$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpQuickPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field BM:Ljava/lang/String;

.field appIcon:Landroid/graphics/drawable/Drawable;

.field className:Ljava/lang/String;

.field index:I

.field isDefault:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/policy/OpQuickPay;

.field xM:Ljava/lang/String;

.field yM:Ljava/lang/String;

.field zM:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpQuickPay;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/policy/OpQuickPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, zM:Z

    iput-boolean p1, p0, isDefault:Z

    const/4 p1, 0x0

    iput-object p1, p0, appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
