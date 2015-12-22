.class public Lcom/android/systemui/qs/QSTile$State;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public alpha:F

.field public autoMirrorDrawable:Z

.field public contentDescription:Ljava/lang/String;

.field public dualLabelContentDescription:Ljava/lang/String;

.field public icon:Lcom/android/systemui/qs/QSTile$Icon;

.field public iconId:I

.field public imageAlpha:F

.field public label:Ljava/lang/String;

.field public pairedDeviceName:Ljava/lang/String;

.field public textAlpha:F

.field public textEllipsis:Z

.field public textTruncate:Z

.field public tintColor:I

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/qs/QSTile$State;->alpha:F

    iput v0, p0, Lcom/android/systemui/qs/QSTile$State;->imageAlpha:F

    iput v0, p0, Lcom/android/systemui/qs/QSTile$State;->textAlpha:F

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->textTruncate:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->textEllipsis:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSTile$State;->tintColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->pairedDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->pairedDeviceName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/systemui/qs/QSTile$State;->alpha:F

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->alpha:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p1, Lcom/android/systemui/qs/QSTile$State;->imageAlpha:F

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->imageAlpha:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p1, Lcom/android/systemui/qs/QSTile$State;->textAlpha:F

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->textAlpha:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->textTruncate:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->textTruncate:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->textEllipsis:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->textEllipsis:Z

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/systemui/qs/QSTile$State;->tintColor:I

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->tintColor:I

    if-eq v1, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    iget v1, p0, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->pairedDeviceName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->pairedDeviceName:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/qs/QSTile$State;->alpha:F

    iput v1, p1, Lcom/android/systemui/qs/QSTile$State;->alpha:F

    iget v1, p0, Lcom/android/systemui/qs/QSTile$State;->imageAlpha:F

    iput v1, p1, Lcom/android/systemui/qs/QSTile$State;->imageAlpha:F

    iget v1, p0, Lcom/android/systemui/qs/QSTile$State;->textAlpha:F

    iput v1, p1, Lcom/android/systemui/qs/QSTile$State;->textAlpha:F

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->textTruncate:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->textTruncate:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->textEllipsis:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->textEllipsis:Z

    iget v1, p0, Lcom/android/systemui/qs/QSTile$State;->tintColor:I

    iput v1, p1, Lcom/android/systemui/qs/QSTile$State;->tintColor:I

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",dualLabelContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",autoMirrorDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pairedDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->pairedDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",imageAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->imageAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",textAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->textAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",textTruncate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->textTruncate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",textEllipsis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->textEllipsis:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",tintColor ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSTile$State;->tintColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method
