.class Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$3;
.super Ljava/lang/Object;
.source "OPAppDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onBindViewHolder(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iput p2, p0, val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iget v1, p0, val$i:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->removeItem(I)V

    return-void
.end method