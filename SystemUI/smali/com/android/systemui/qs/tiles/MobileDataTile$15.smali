.class Lcom/android/systemui/qs/tiles/MobileDataTile$15;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataAlert(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

.field final synthetic val$disableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$15;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    goto :goto_0
.end method
