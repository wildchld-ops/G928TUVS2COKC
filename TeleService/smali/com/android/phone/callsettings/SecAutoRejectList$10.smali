.class Lcom/android/phone/callsettings/SecAutoRejectList$10;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

.field final synthetic val$checkBoxArray:[Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;[Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$checkBoxArray:[Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$checkBoxArray:[Landroid/widget/CheckBox;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$checkBoxArray:[Landroid/widget/CheckBox;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$checkBoxArray:[Landroid/widget/CheckBox;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$checkBoxArray:[Landroid/widget/CheckBox;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$checkBoxArray:[Landroid/widget/CheckBox;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$checkBoxArray:[Landroid/widget/CheckBox;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$checkBoxArray:[Landroid/widget/CheckBox;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$checkBoxArray:[Landroid/widget/CheckBox;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x7f1001ca
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
