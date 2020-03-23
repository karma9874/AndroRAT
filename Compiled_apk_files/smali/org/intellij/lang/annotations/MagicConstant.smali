.class public interface abstract annotation Lorg/intellij/lang/annotations/MagicConstant;
.super Ljava/lang/Object;
.source "MagicConstant.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/intellij/lang/annotations/MagicConstant;
        flags = {}
        flagsFromClass = V
        intValues = {}
        stringValues = {}
        valuesFromClass = V
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract flags()[J
.end method

.method public abstract flagsFromClass()Ljava/lang/Class;
.end method

.method public abstract intValues()[J
.end method

.method public abstract stringValues()[Ljava/lang/String;
.end method

.method public abstract valuesFromClass()Ljava/lang/Class;
.end method
