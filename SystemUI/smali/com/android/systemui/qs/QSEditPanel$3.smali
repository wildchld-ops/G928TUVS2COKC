.class Lcom/android/systemui/qs/QSEditPanel$3;
.super Ljava/lang/Object;
.source "QSEditPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSEditPanel;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    const-string v3, "QSEditPanel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQconnectGroup() setChecked : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$3;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
