.class public interface abstract Lcom/myscript/atk/inw/stroker/Stroker;
.super Ljava/lang/Object;
.source "Stroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract end()V
.end method

.method public abstract getBoundingRect()Landroid/graphics/RectF;
.end method

.method public abstract getDirtyRect()Landroid/graphics/RectF;
.end method

.method public abstract getFactor()F
.end method

.method public abstract getPath()Landroid/graphics/Path;
.end method

.method public abstract getPointCount()I
.end method

.method public abstract getPoints()[Lcom/myscript/atk/inw/InkPoint;
.end method

.method public abstract getWidth()F
.end method

.method public abstract isPointSize()Z
.end method

.method public abstract moveTo(FFFJZ)V
.end method

.method public abstract resetDirtyRect()V
.end method

.method public abstract setFactor(F)V
.end method

.method public abstract setStylus(Z)V
.end method

.method public abstract setWidth(F)V
.end method

.method public abstract startAt(FFFJ)V
.end method

.method public abstract strokerType()Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
.end method
