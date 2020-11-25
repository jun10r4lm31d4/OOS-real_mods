.class Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;
.super Ljava/lang/Object;
.source "OPCustomClockPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomClockPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemEntity"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field resId:I

.field selected:Z

.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

.field type:I


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, selected:Z

    iput-object p2, p0, name:Ljava/lang/String;

    iput p3, p0, resId:I

    iput p4, p0, type:I

    return-void
.end method
