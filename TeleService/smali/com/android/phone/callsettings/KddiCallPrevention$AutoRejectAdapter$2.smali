.class Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$2;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->drawUnknownItem(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textlayout onClick ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-boolean v3, v3, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$2;->this$1:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # getter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$1200(Lcom/android/phone/callsettings/KddiCallPrevention;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter$2;->val$item:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-boolean v1, v1, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->activate:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method
