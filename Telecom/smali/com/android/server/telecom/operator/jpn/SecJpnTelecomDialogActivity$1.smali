.class Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$1;
.super Landroid/widget/SimpleAdapter;
.source "SecJpnTelecomDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;->showInternationalPrefixDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$1;->this$0:Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
