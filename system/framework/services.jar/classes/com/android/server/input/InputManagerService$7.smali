.class Lcom/android/server/input/InputManagerService$7;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHasSeenDeviceSpecificLayout:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$enabledLayoutDescriptors:[Ljava/lang/String;

.field final synthetic val$enabledLayouts:Ljava/util/ArrayList;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

.field final synthetic val$potentialLayouts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, val$enabledLayoutDescriptors:[Ljava/lang/String;

    iput-object p3, p0, val$enabledLayouts:Ljava/util/ArrayList;

    iput-object p4, p0, val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p5, p0, val$potentialLayouts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 5

    iget-object v0, p0, val$enabledLayoutDescriptors:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, val$enabledLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v0

    iget-object v1, p0, val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v0

    iget-object v1, p0, val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, mHasSeenDeviceSpecificLayout:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, mHasSeenDeviceSpecificLayout:Z

    iget-object v0, p0, val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, mHasSeenDeviceSpecificLayout:Z

    if-nez v0, :cond_4

    iget-object v0, p0, val$potentialLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method
