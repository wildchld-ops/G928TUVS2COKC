.class Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleAndNegativeColorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "greyscale_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_contrast"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    const-string v2, "accessibility"

    # invokes: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$800(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$13;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # invokes: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V
    invoke-static {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$600(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    return-void
.end method
